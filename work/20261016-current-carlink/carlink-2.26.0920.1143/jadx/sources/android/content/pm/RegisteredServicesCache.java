package android.content.pm;

import android.accessibilityservice.c;
import android.accounts.GrantCredentialsPermissionActivity;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.content.res.XmlResourceParser;
import android.os.Environment;
import android.os.Handler;
import android.os.UserHandle;
import android.os.UserManager;
import android.os.storage.StorageManager;
import android.util.AtomicFile;
import android.util.AttributeSet;
import android.util.IntArray;
import android.util.Log;
import android.util.SparseArray;
import android.util.Xml;
import com.android.internal.annotations.GuardedBy;
import com.android.internal.util.ArrayUtils;
import com.android.internal.util.FastXmlSerializer;
import com.google.android.collect.Lists;
import com.google.android.collect.Maps;
import java.io.File;
import java.io.FileDescriptor;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import libcore.io.IoUtils;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes.dex */
public abstract class RegisteredServicesCache<V> {
    private static final boolean DEBUG = false;
    protected static final String REGISTERED_SERVICES_DIR = "registered_services";
    private static final String TAG = "PackageManager";
    private final String mAttributesName;
    public final Context mContext;
    private final BroadcastReceiver mExternalReceiver;
    private Handler mHandler;
    private final String mInterfaceName;
    private RegisteredServicesCacheListener<V> mListener;
    private final String mMetaDataName;
    private final BroadcastReceiver mPackageReceiver;
    private final XmlSerializerAndParser<V> mSerializerAndParser;
    private final BroadcastReceiver mUserRemovedReceiver;
    protected final Object mServicesLock = new Object();

    @GuardedBy("mServicesLock")
    private final SparseArray<UserServices<V>> mUserServices = new SparseArray<>(2);

    public static class ServiceInfo<V> {
        public final ComponentInfo componentInfo;
        public final ComponentName componentName;
        public final V type;
        public final int uid;

        public ServiceInfo(V v2, ComponentInfo componentInfo, ComponentName componentName) {
            this.type = v2;
            this.componentInfo = componentInfo;
            this.componentName = componentName;
            this.uid = componentInfo != null ? componentInfo.applicationInfo.uid : -1;
        }

        public String toString() {
            return "ServiceInfo: " + this.type + ", " + this.componentName + ", uid " + this.uid;
        }
    }

    public static class UserServices<V> {

        @GuardedBy("mServicesLock")
        boolean mPersistentServicesFileDidNotExist;

        @GuardedBy("mServicesLock")
        final Map<V, Integer> persistentServices;

        @GuardedBy("mServicesLock")
        Map<V, ServiceInfo<V>> services;

        private UserServices() {
            this.persistentServices = Maps.newHashMap();
            this.services = null;
            this.mPersistentServicesFileDidNotExist = true;
        }
    }

    public RegisteredServicesCache(Context context, String str, String str2, String str3, XmlSerializerAndParser<V> xmlSerializerAndParser) {
        BroadcastReceiver broadcastReceiver = new BroadcastReceiver() { // from class: android.content.pm.RegisteredServicesCache.1
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context2, Intent intent) {
                int intExtra = intent.getIntExtra(Intent.EXTRA_UID, -1);
                if (intExtra != -1) {
                    RegisteredServicesCache.this.handlePackageEvent(intent, UserHandle.getUserId(intExtra));
                }
            }
        };
        this.mPackageReceiver = broadcastReceiver;
        BroadcastReceiver broadcastReceiver2 = new BroadcastReceiver() { // from class: android.content.pm.RegisteredServicesCache.2
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context2, Intent intent) {
                RegisteredServicesCache.this.handlePackageEvent(intent, 0);
            }
        };
        this.mExternalReceiver = broadcastReceiver2;
        BroadcastReceiver broadcastReceiver3 = new BroadcastReceiver() { // from class: android.content.pm.RegisteredServicesCache.3
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context2, Intent intent) {
                RegisteredServicesCache.this.onUserRemoved(intent.getIntExtra(Intent.EXTRA_USER_HANDLE, -1));
            }
        };
        this.mUserRemovedReceiver = broadcastReceiver3;
        this.mContext = context;
        this.mInterfaceName = str;
        this.mMetaDataName = str2;
        this.mAttributesName = str3;
        this.mSerializerAndParser = xmlSerializerAndParser;
        migrateIfNecessaryLocked();
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction(Intent.ACTION_PACKAGE_ADDED);
        intentFilter.addAction(Intent.ACTION_PACKAGE_CHANGED);
        intentFilter.addAction(Intent.ACTION_PACKAGE_REMOVED);
        intentFilter.addDataScheme("package");
        context.registerReceiverAsUser(broadcastReceiver, UserHandle.ALL, intentFilter, null, null);
        IntentFilter intentFilter2 = new IntentFilter();
        intentFilter2.addAction(Intent.ACTION_EXTERNAL_APPLICATIONS_AVAILABLE);
        intentFilter2.addAction(Intent.ACTION_EXTERNAL_APPLICATIONS_UNAVAILABLE);
        context.registerReceiver(broadcastReceiver2, intentFilter2);
        IntentFilter intentFilter3 = new IntentFilter();
        intentFilter2.addAction(Intent.ACTION_USER_REMOVED);
        context.registerReceiver(broadcastReceiver3, intentFilter3);
    }

    private boolean containsType(ArrayList<ServiceInfo<V>> arrayList, V v2) {
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            if (arrayList.get(i2).type.equals(v2)) {
                return true;
            }
        }
        return false;
    }

    private boolean containsTypeAndUid(ArrayList<ServiceInfo<V>> arrayList, V v2, int i2) {
        int size = arrayList.size();
        for (int i3 = 0; i3 < size; i3++) {
            ServiceInfo<V> serviceInfo = arrayList.get(i3);
            if (serviceInfo.type.equals(v2) && serviceInfo.uid == i2) {
                return true;
            }
        }
        return false;
    }

    private boolean containsUid(int[] iArr, int i2) {
        return iArr == null || ArrayUtils.contains(iArr, i2);
    }

    private AtomicFile createFileForUser(int i2) {
        return new AtomicFile(new File(getUserSystemDirectory(i2), c.n(new StringBuilder("registered_services/"), this.mInterfaceName, ".xml")));
    }

    @GuardedBy("mServicesLock")
    private UserServices<V> findOrCreateUserLocked(int i2) {
        return findOrCreateUserLocked(i2, true);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void generateServicesMap(int[] iArr, int i2) {
        ArrayList<ServiceInfo<V>> arrayList = new ArrayList();
        for (ResolveInfo resolveInfo : queryIntentServices(i2)) {
            try {
                ServiceInfo serviceInfo = parseServiceInfo(resolveInfo);
                if (serviceInfo == null) {
                    Log.w(TAG, "Unable to load service info " + resolveInfo.toString());
                } else {
                    arrayList.add(serviceInfo);
                }
            } catch (IOException | XmlPullParserException e2) {
                Log.w(TAG, "Unable to load service info " + resolveInfo.toString(), e2);
            }
        }
        synchronized (this.mServicesLock) {
            UserServices userServicesFindOrCreateUserLocked = findOrCreateUserLocked(i2);
            boolean z2 = userServicesFindOrCreateUserLocked.services == null;
            if (z2) {
                userServicesFindOrCreateUserLocked.services = Maps.newHashMap();
            }
            boolean z3 = false;
            for (ServiceInfo<V> serviceInfo2 : arrayList) {
                Integer num = userServicesFindOrCreateUserLocked.persistentServices.get(serviceInfo2.type);
                if (num == null) {
                    userServicesFindOrCreateUserLocked.services.put(serviceInfo2.type, serviceInfo2);
                    userServicesFindOrCreateUserLocked.persistentServices.put(serviceInfo2.type, Integer.valueOf(serviceInfo2.uid));
                    if (!userServicesFindOrCreateUserLocked.mPersistentServicesFileDidNotExist || !z2) {
                        notifyListener(serviceInfo2.type, i2, false);
                    }
                } else {
                    int iIntValue = num.intValue();
                    int i3 = serviceInfo2.uid;
                    if (iIntValue == i3) {
                        userServicesFindOrCreateUserLocked.services.put(serviceInfo2.type, serviceInfo2);
                    } else if (inSystemImage(i3) || !containsTypeAndUid(arrayList, serviceInfo2.type, num.intValue())) {
                        userServicesFindOrCreateUserLocked.services.put(serviceInfo2.type, serviceInfo2);
                        userServicesFindOrCreateUserLocked.persistentServices.put(serviceInfo2.type, Integer.valueOf(serviceInfo2.uid));
                        notifyListener(serviceInfo2.type, i2, false);
                    }
                }
                z3 = true;
            }
            ArrayList arrayListNewArrayList = Lists.newArrayList();
            for (V v2 : userServicesFindOrCreateUserLocked.persistentServices.keySet()) {
                if (!containsType(arrayList, v2) && containsUid(iArr, userServicesFindOrCreateUserLocked.persistentServices.get(v2).intValue())) {
                    arrayListNewArrayList.add(v2);
                }
            }
            for (Object obj : arrayListNewArrayList) {
                userServicesFindOrCreateUserLocked.persistentServices.remove(obj);
                userServicesFindOrCreateUserLocked.services.remove(obj);
                notifyListener(obj, i2, true);
                z3 = true;
            }
            if (z3) {
                onServicesChangedLocked(i2);
                writePersistentServicesLocked(userServicesFindOrCreateUserLocked, i2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void handlePackageEvent(Intent intent, int i2) {
        int[] intArrayExtra;
        String action = intent.getAction();
        boolean z2 = Intent.ACTION_PACKAGE_REMOVED.equals(action) || Intent.ACTION_EXTERNAL_APPLICATIONS_UNAVAILABLE.equals(action);
        boolean booleanExtra = intent.getBooleanExtra(Intent.EXTRA_REPLACING, false);
        if (z2 && booleanExtra) {
            return;
        }
        if (Intent.ACTION_EXTERNAL_APPLICATIONS_AVAILABLE.equals(action) || Intent.ACTION_EXTERNAL_APPLICATIONS_UNAVAILABLE.equals(action)) {
            intArrayExtra = intent.getIntArrayExtra(Intent.EXTRA_CHANGED_UID_LIST);
        } else {
            int intExtra = intent.getIntExtra(Intent.EXTRA_UID, -1);
            intArrayExtra = intExtra > 0 ? new int[]{intExtra} : null;
        }
        generateServicesMap(intArrayExtra, i2);
    }

    private void migrateIfNecessaryLocked() {
        if (this.mSerializerAndParser == null) {
            return;
        }
        File file = new File(new File(getDataDirectory(), StorageManager.UUID_SYSTEM), REGISTERED_SERVICES_DIR);
        AtomicFile atomicFile = new AtomicFile(new File(file, c.n(new StringBuilder(), this.mInterfaceName, ".xml")));
        if (atomicFile.getBaseFile().exists()) {
            File file2 = new File(file, c.n(new StringBuilder(), this.mInterfaceName, ".xml.migrated"));
            if (file2.exists()) {
                return;
            }
            FileInputStream fileInputStreamOpenRead = null;
            try {
                try {
                    fileInputStreamOpenRead = atomicFile.openRead();
                    this.mUserServices.clear();
                    readPersistentServicesLocked(fileInputStreamOpenRead);
                } catch (Throwable th) {
                    IoUtils.closeQuietly(fileInputStreamOpenRead);
                    throw th;
                }
            } catch (Exception e2) {
                Log.w(TAG, "Error reading persistent services, starting from scratch", e2);
            }
            IoUtils.closeQuietly(fileInputStreamOpenRead);
            try {
                for (UserInfo userInfo : getUsers()) {
                    UserServices<V> userServices = this.mUserServices.get(userInfo.id);
                    if (userServices != null) {
                        writePersistentServicesLocked(userServices, userInfo.id);
                    }
                }
                file2.createNewFile();
            } catch (Exception e3) {
                Log.w(TAG, "Migration failed", e3);
            }
            this.mUserServices.clear();
        }
    }

    private void notifyListener(final V v2, final int i2, final boolean z2) {
        final RegisteredServicesCacheListener<V> registeredServicesCacheListener;
        Handler handler;
        synchronized (this) {
            registeredServicesCacheListener = this.mListener;
            handler = this.mHandler;
        }
        if (registeredServicesCacheListener == null) {
            return;
        }
        handler.post(new Runnable() { // from class: android.content.pm.RegisteredServicesCache.4
            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Type inference fix 'apply assigned field type' failed
            java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
            	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
            	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
            	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
             */
            @Override // java.lang.Runnable
            public void run() {
                registeredServicesCacheListener.onServiceChanged(v2, i2, z2);
            }
        });
    }

    private void readPersistentServicesLocked(InputStream inputStream) throws XmlPullParserException, IOException {
        XmlPullParser xmlPullParserNewPullParser = Xml.newPullParser();
        xmlPullParserNewPullParser.setInput(inputStream, StandardCharsets.UTF_8.name());
        for (int eventType = xmlPullParserNewPullParser.getEventType(); eventType != 2 && eventType != 1; eventType = xmlPullParserNewPullParser.next()) {
        }
        if ("services".equals(xmlPullParserNewPullParser.getName())) {
            int next = xmlPullParserNewPullParser.next();
            do {
                if (next == 2 && xmlPullParserNewPullParser.getDepth() == 2 && "service".equals(xmlPullParserNewPullParser.getName())) {
                    V vCreateFromXml = this.mSerializerAndParser.createFromXml(xmlPullParserNewPullParser);
                    if (vCreateFromXml == null) {
                        return;
                    }
                    int i2 = Integer.parseInt(xmlPullParserNewPullParser.getAttributeValue(null, GrantCredentialsPermissionActivity.EXTRAS_REQUESTING_UID));
                    findOrCreateUserLocked(UserHandle.getUserId(i2), false).persistentServices.put(vCreateFromXml, Integer.valueOf(i2));
                }
                next = xmlPullParserNewPullParser.next();
            } while (next != 1);
        }
    }

    private void writePersistentServicesLocked(UserServices<V> userServices, int i2) {
        if (this.mSerializerAndParser == null) {
            return;
        }
        AtomicFile atomicFileCreateFileForUser = createFileForUser(i2);
        FileOutputStream fileOutputStream = null;
        try {
            FileOutputStream fileOutputStreamStartWrite = atomicFileCreateFileForUser.startWrite();
            try {
                FastXmlSerializer fastXmlSerializer = new FastXmlSerializer();
                fastXmlSerializer.setOutput(fileOutputStreamStartWrite, StandardCharsets.UTF_8.name());
                fastXmlSerializer.startDocument(null, Boolean.TRUE);
                fastXmlSerializer.setFeature("http://xmlpull.org/v1/doc/features.html#indent-output", true);
                fastXmlSerializer.startTag(null, "services");
                for (Map.Entry<V, Integer> entry : userServices.persistentServices.entrySet()) {
                    fastXmlSerializer.startTag(null, "service");
                    fastXmlSerializer.attribute(null, GrantCredentialsPermissionActivity.EXTRAS_REQUESTING_UID, Integer.toString(entry.getValue().intValue()));
                    this.mSerializerAndParser.writeAsXml(entry.getKey(), fastXmlSerializer);
                    fastXmlSerializer.endTag(null, "service");
                }
                fastXmlSerializer.endTag(null, "services");
                fastXmlSerializer.endDocument();
                atomicFileCreateFileForUser.finishWrite(fileOutputStreamStartWrite);
            } catch (IOException e2) {
                e = e2;
                fileOutputStream = fileOutputStreamStartWrite;
                Log.w(TAG, "Error writing accounts", e);
                if (fileOutputStream != null) {
                    atomicFileCreateFileForUser.failWrite(fileOutputStream);
                }
            }
        } catch (IOException e3) {
            e = e3;
        }
    }

    public void dump(FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr, int i2) {
        synchronized (this.mServicesLock) {
            UserServices<V> userServicesFindOrCreateUserLocked = findOrCreateUserLocked(i2);
            if (userServicesFindOrCreateUserLocked.services != null) {
                printWriter.println("RegisteredServicesCache: " + userServicesFindOrCreateUserLocked.services.size() + " services");
                Iterator<ServiceInfo<V>> it = userServicesFindOrCreateUserLocked.services.values().iterator();
                while (it.hasNext()) {
                    printWriter.println("  " + it.next());
                }
            } else {
                printWriter.println("RegisteredServicesCache: services not loaded");
            }
        }
    }

    public Collection<ServiceInfo<V>> getAllServices(int i2) {
        Collection<ServiceInfo<V>> collectionUnmodifiableCollection;
        synchronized (this.mServicesLock) {
            UserServices<V> userServicesFindOrCreateUserLocked = findOrCreateUserLocked(i2);
            if (userServicesFindOrCreateUserLocked.services == null) {
                generateServicesMap(null, i2);
            }
            collectionUnmodifiableCollection = Collections.unmodifiableCollection(new ArrayList(userServicesFindOrCreateUserLocked.services.values()));
        }
        return collectionUnmodifiableCollection;
    }

    public File getDataDirectory() {
        return Environment.getDataDirectory();
    }

    public RegisteredServicesCacheListener<V> getListener() {
        RegisteredServicesCacheListener<V> registeredServicesCacheListener;
        synchronized (this) {
            registeredServicesCacheListener = this.mListener;
        }
        return registeredServicesCacheListener;
    }

    public Map<V, Integer> getPersistentServices(int i2) {
        return findOrCreateUserLocked(i2).persistentServices;
    }

    public ServiceInfo<V> getServiceInfo(V v2, int i2) {
        ServiceInfo<V> serviceInfo;
        synchronized (this.mServicesLock) {
            UserServices<V> userServicesFindOrCreateUserLocked = findOrCreateUserLocked(i2);
            if (userServicesFindOrCreateUserLocked.services == null) {
                generateServicesMap(null, i2);
            }
            serviceInfo = userServicesFindOrCreateUserLocked.services.get(v2);
        }
        return serviceInfo;
    }

    public UserInfo getUser(int i2) {
        return UserManager.get(this.mContext).getUserInfo(i2);
    }

    public File getUserSystemDirectory(int i2) {
        return Environment.getUserSystemDirectory(i2);
    }

    public List<UserInfo> getUsers() {
        return UserManager.get(this.mContext).getUsers(true);
    }

    public boolean inSystemImage(int i2) {
        String[] packagesForUid = this.mContext.getPackageManager().getPackagesForUid(i2);
        if (packagesForUid != null) {
            for (String str : packagesForUid) {
                try {
                    if ((this.mContext.getPackageManager().getPackageInfo(str, 0).applicationInfo.flags & 1) != 0) {
                        return true;
                    }
                } catch (PackageManager.NameNotFoundException unused) {
                }
            }
        }
        return false;
    }

    public void invalidateCache(int i2) {
        synchronized (this.mServicesLock) {
            findOrCreateUserLocked(i2).services = null;
            onServicesChangedLocked(i2);
        }
    }

    public void onServicesChangedLocked(int i2) {
    }

    public void onUserRemoved(int i2) {
        synchronized (this.mServicesLock) {
            this.mUserServices.remove(i2);
        }
    }

    public abstract V parseServiceAttributes(Resources resources, String str, AttributeSet attributeSet);

    public ServiceInfo<V> parseServiceInfo(ResolveInfo resolveInfo) throws Throwable {
        int next;
        android.content.pm.ServiceInfo serviceInfo = resolveInfo.serviceInfo;
        ComponentName componentName = new ComponentName(serviceInfo.packageName, serviceInfo.name);
        PackageManager packageManager = this.mContext.getPackageManager();
        XmlResourceParser xmlResourceParser = null;
        try {
            try {
                XmlResourceParser xmlResourceParserLoadXmlMetaData = serviceInfo.loadXmlMetaData(packageManager, this.mMetaDataName);
                try {
                    if (xmlResourceParserLoadXmlMetaData == null) {
                        throw new XmlPullParserException("No " + this.mMetaDataName + " meta-data");
                    }
                    AttributeSet attributeSetAsAttributeSet = Xml.asAttributeSet(xmlResourceParserLoadXmlMetaData);
                    do {
                        next = xmlResourceParserLoadXmlMetaData.next();
                        if (next == 1) {
                            break;
                        }
                    } while (next != 2);
                    if (!this.mAttributesName.equals(xmlResourceParserLoadXmlMetaData.getName())) {
                        throw new XmlPullParserException("Meta-data does not start with " + this.mAttributesName + " tag");
                    }
                    V serviceAttributes = parseServiceAttributes(packageManager.getResourcesForApplication(serviceInfo.applicationInfo), serviceInfo.packageName, attributeSetAsAttributeSet);
                    if (serviceAttributes == null) {
                        xmlResourceParserLoadXmlMetaData.close();
                        return null;
                    }
                    ServiceInfo<V> serviceInfo2 = new ServiceInfo<>(serviceAttributes, resolveInfo.serviceInfo, componentName);
                    xmlResourceParserLoadXmlMetaData.close();
                    return serviceInfo2;
                } catch (PackageManager.NameNotFoundException unused) {
                    throw new XmlPullParserException("Unable to load resources for pacakge " + serviceInfo.packageName);
                } catch (Throwable th) {
                    th = th;
                    xmlResourceParser = xmlResourceParserLoadXmlMetaData;
                    if (xmlResourceParser != null) {
                        xmlResourceParser.close();
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (PackageManager.NameNotFoundException unused2) {
        }
    }

    public List<ResolveInfo> queryIntentServices(int i2) {
        return this.mContext.getPackageManager().queryIntentServicesAsUser(new Intent(this.mInterfaceName), 786560, i2);
    }

    public void setListener(RegisteredServicesCacheListener<V> registeredServicesCacheListener, Handler handler) {
        if (handler == null) {
            handler = new Handler(this.mContext.getMainLooper());
        }
        synchronized (this) {
            this.mHandler = handler;
            this.mListener = registeredServicesCacheListener;
        }
    }

    public void updateServices(int i2) {
        ApplicationInfo applicationInfoAsUser;
        synchronized (this.mServicesLock) {
            UserServices<V> userServicesFindOrCreateUserLocked = findOrCreateUserLocked(i2);
            if (userServicesFindOrCreateUserLocked.services == null) {
                return;
            }
            IntArray intArray = null;
            for (ServiceInfo serviceInfo : new ArrayList(userServicesFindOrCreateUserLocked.services.values())) {
                ComponentInfo componentInfo = serviceInfo.componentInfo;
                int i3 = componentInfo.applicationInfo.versionCode;
                try {
                    applicationInfoAsUser = this.mContext.getPackageManager().getApplicationInfoAsUser(componentInfo.packageName, 0, i2);
                } catch (PackageManager.NameNotFoundException unused) {
                    applicationInfoAsUser = null;
                }
                if (applicationInfoAsUser == null || applicationInfoAsUser.versionCode != i3) {
                    if (intArray == null) {
                        intArray = new IntArray();
                    }
                    intArray.add(serviceInfo.uid);
                }
            }
            if (intArray == null || intArray.size() <= 0) {
                return;
            }
            generateServicesMap(intArray.toArray(), i2);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v0, types: [android.content.pm.RegisteredServicesCache$1] */
    /* JADX WARN: Type inference failed for: r2v1, types: [java.lang.AutoCloseable] */
    /* JADX WARN: Type inference failed for: r2v2 */
    /* JADX WARN: Type inference failed for: r2v3, types: [java.lang.AutoCloseable] */
    /* JADX WARN: Type inference failed for: r2v4, types: [java.io.FileInputStream, java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r2v5 */
    /* JADX WARN: Type inference failed for: r2v6 */
    /* JADX WARN: Type inference failed for: r2v7 */
    @GuardedBy("mServicesLock")
    private UserServices<V> findOrCreateUserLocked(int i2, boolean z2) {
        UserInfo user;
        ?? r2;
        UserServices<V> userServices = this.mUserServices.get(i2);
        if (userServices == null) {
            ?? OpenRead = 0;
            OpenRead = 0;
            userServices = new UserServices<>();
            this.mUserServices.put(i2, userServices);
            if (z2 && this.mSerializerAndParser != null && (user = getUser(i2)) != null) {
                AtomicFile atomicFileCreateFileForUser = createFileForUser(user.id);
                if (atomicFileCreateFileForUser.getBaseFile().exists()) {
                    try {
                        try {
                            OpenRead = atomicFileCreateFileForUser.openRead();
                            readPersistentServicesLocked(OpenRead);
                            r2 = OpenRead;
                        } catch (Exception e2) {
                            Log.w(TAG, "Error reading persistent services for user " + user.id, e2);
                            r2 = OpenRead;
                        }
                    } finally {
                        IoUtils.closeQuietly((AutoCloseable) OpenRead);
                    }
                }
            }
        }
        return userServices;
    }
}
