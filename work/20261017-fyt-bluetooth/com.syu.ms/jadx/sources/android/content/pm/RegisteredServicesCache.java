package android.content.pm;

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
import android.util.AtomicFile;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.util.Xml;
import com.android.internal.annotations.GuardedBy;
import com.google.android.collect.Lists;
import com.google.android.collect.Maps;
import java.io.File;
import java.io.FileDescriptor;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.Map;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import u.f;

/* JADX INFO: loaded from: classes.dex */
public abstract class RegisteredServicesCache<V> {
    private static final boolean DEBUG = false;
    private static final String TAG = "PackageManager";
    private final String mAttributesName;
    public final Context mContext;
    private final BroadcastReceiver mExternalReceiver;
    private Handler mHandler;
    private final String mInterfaceName;
    private RegisteredServicesCacheListener<V> mListener;
    private final String mMetaDataName;
    private final BroadcastReceiver mPackageReceiver;
    private final AtomicFile mPersistentServicesFile;

    @GuardedBy("mServicesLock")
    private boolean mPersistentServicesFileDidNotExist;
    private final XmlSerializerAndParser<V> mSerializerAndParser;
    private final Object mServicesLock = new Object();

    @GuardedBy("mServicesLock")
    private final SparseArray<UserServices<V>> mUserServices = new SparseArray<>(2);

    public static class ServiceInfo<V> {
        public final ComponentName componentName;
        public final V type;
        public final int uid;

        public ServiceInfo(V v2, ComponentName componentName, int i2) {
            this.type = v2;
            this.componentName = componentName;
            this.uid = i2;
        }

        public String toString() {
            return "ServiceInfo: " + this.type + ", " + this.componentName + ", uid " + this.uid;
        }
    }

    public static class UserServices<V> {

        @GuardedBy("mServicesLock")
        public final Map<V, Integer> persistentServices;

        @GuardedBy("mServicesLock")
        public Map<V, ServiceInfo<V>> services;

        private UserServices() {
            this.persistentServices = Maps.newHashMap();
            this.services = null;
        }
    }

    public RegisteredServicesCache(Context context, String str, String str2, String str3, XmlSerializerAndParser<V> xmlSerializerAndParser) throws Throwable {
        BroadcastReceiver broadcastReceiver = new BroadcastReceiver() { // from class: android.content.pm.RegisteredServicesCache.1
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context2, Intent intent) throws Throwable {
                int intExtra = intent.getIntExtra(Intent.EXTRA_UID, -1);
                if (intExtra != -1) {
                    RegisteredServicesCache.this.generateServicesMap(UserHandle.getUserId(intExtra));
                }
            }
        };
        this.mPackageReceiver = broadcastReceiver;
        BroadcastReceiver broadcastReceiver2 = new BroadcastReceiver() { // from class: android.content.pm.RegisteredServicesCache.2
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context2, Intent intent) throws Throwable {
                RegisteredServicesCache.this.generateServicesMap(0);
            }
        };
        this.mExternalReceiver = broadcastReceiver2;
        this.mContext = context;
        this.mInterfaceName = str;
        this.mMetaDataName = str2;
        this.mAttributesName = str3;
        this.mSerializerAndParser = xmlSerializerAndParser;
        this.mPersistentServicesFile = new AtomicFile(new File(new File(new File(Environment.getDataDirectory(), "system"), "registered_services"), str + ".xml"));
        readPersistentServicesLocked();
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

    private UserServices<V> findOrCreateUserLocked(int i2) {
        UserServices<V> userServices = this.mUserServices.get(i2);
        if (userServices != null) {
            return userServices;
        }
        UserServices<V> userServices2 = new UserServices<>();
        this.mUserServices.put(i2, userServices2);
        return userServices2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public void generateServicesMap(int i2) throws Throwable {
        PackageManager packageManager = this.mContext.getPackageManager();
        ArrayList<ServiceInfo<V>> arrayList = new ArrayList();
        for (ResolveInfo resolveInfo : packageManager.queryIntentServicesAsUser(new Intent(this.mInterfaceName), 128, i2)) {
            try {
                ServiceInfo serviceInfo = parseServiceInfo(resolveInfo);
                if (serviceInfo == null) {
                    Log.w(TAG, "Unable to load service info " + resolveInfo.toString());
                } else {
                    arrayList.add(serviceInfo);
                }
            } catch (IOException e2) {
                Log.w(TAG, "Unable to load service info " + resolveInfo.toString(), e2);
            } catch (XmlPullParserException e3) {
                Log.w(TAG, "Unable to load service info " + resolveInfo.toString(), e3);
            }
        }
        synchronized (this.mServicesLock) {
            UserServices userServicesFindOrCreateUserLocked = findOrCreateUserLocked(i2);
            Map<V, ServiceInfo<V>> map = userServicesFindOrCreateUserLocked.services;
            boolean z2 = map == null;
            if (z2) {
                userServicesFindOrCreateUserLocked.services = Maps.newHashMap();
            } else {
                map.clear();
            }
            boolean z3 = false;
            for (ServiceInfo<V> serviceInfo2 : arrayList) {
                Integer num = userServicesFindOrCreateUserLocked.persistentServices.get(serviceInfo2.type);
                if (num == null) {
                    userServicesFindOrCreateUserLocked.services.put(serviceInfo2.type, serviceInfo2);
                    userServicesFindOrCreateUserLocked.persistentServices.put(serviceInfo2.type, Integer.valueOf(serviceInfo2.uid));
                    if (!this.mPersistentServicesFileDidNotExist || !z2) {
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
                if (!containsType(arrayList, v2)) {
                    arrayListNewArrayList.add(v2);
                }
            }
            for (Object obj : arrayListNewArrayList) {
                userServicesFindOrCreateUserLocked.persistentServices.remove(obj);
                notifyListener(obj, i2, true);
                z3 = true;
            }
            if (z3) {
                writePersistentServicesLocked();
            }
        }
    }

    private boolean inSystemImage(int i2) {
        for (String str : this.mContext.getPackageManager().getPackagesForUid(i2)) {
            try {
                if ((this.mContext.getPackageManager().getPackageInfo(str, 0).applicationInfo.flags & 1) != 0) {
                    return true;
                }
            } catch (PackageManager.NameNotFoundException unused) {
            }
        }
        return false;
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
        handler.post(new Runnable() { // from class: android.content.pm.RegisteredServicesCache.3
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

    private ServiceInfo<V> parseServiceInfo(ResolveInfo resolveInfo) throws Throwable {
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
                    ServiceInfo<V> serviceInfo2 = new ServiceInfo<>(serviceAttributes, componentName, resolveInfo.serviceInfo.applicationInfo.uid);
                    xmlResourceParserLoadXmlMetaData.close();
                    return serviceInfo2;
                } catch (PackageManager.NameNotFoundException unused) {
                    xmlResourceParser = xmlResourceParserLoadXmlMetaData;
                    throw new XmlPullParserException("Unable to load resources for pacakge " + serviceInfo.packageName);
                } catch (Throwable th) {
                    th = th;
                    xmlResourceParser = xmlResourceParserLoadXmlMetaData;
                    if (xmlResourceParser != null) {
                        xmlResourceParser.close();
                    }
                    throw th;
                }
            } catch (PackageManager.NameNotFoundException unused2) {
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    /* JADX WARN: Code duplicated, block: B:55:0x00ab A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:65:? A[RETURN, SYNTHETIC] */
    private void readPersistentServicesLocked() throws Throwable {
        Throwable th;
        FileInputStream fileInputStreamOpenRead;
        Exception e2;
        this.mUserServices.clear();
        if (this.mSerializerAndParser == null) {
            return;
        }
        FileInputStream fileInputStream = null;
        try {
            try {
                try {
                    boolean z2 = !this.mPersistentServicesFile.getBaseFile().exists();
                    this.mPersistentServicesFileDidNotExist = z2;
                    if (z2) {
                        return;
                    }
                    fileInputStreamOpenRead = this.mPersistentServicesFile.openRead();
                    try {
                        XmlPullParser xmlPullParserNewPullParser = Xml.newPullParser();
                        xmlPullParserNewPullParser.setInput(fileInputStreamOpenRead, null);
                        for (int eventType = xmlPullParserNewPullParser.getEventType(); eventType != 2 && eventType != 1; eventType = xmlPullParserNewPullParser.next()) {
                        }
                        if ("services".equals(xmlPullParserNewPullParser.getName())) {
                            int next = xmlPullParserNewPullParser.next();
                            do {
                                if (next == 2 && xmlPullParserNewPullParser.getDepth() == 2 && "service".equals(xmlPullParserNewPullParser.getName())) {
                                    V vCreateFromXml = this.mSerializerAndParser.createFromXml(xmlPullParserNewPullParser);
                                    if (vCreateFromXml == null) {
                                        break;
                                    }
                                    int i2 = Integer.parseInt(xmlPullParserNewPullParser.getAttributeValue(null, GrantCredentialsPermissionActivity.EXTRAS_REQUESTING_UID));
                                    findOrCreateUserLocked(UserHandle.getUserId(i2)).persistentServices.put(vCreateFromXml, Integer.valueOf(i2));
                                    next = xmlPullParserNewPullParser.next();
                                } else {
                                    next = xmlPullParserNewPullParser.next();
                                }
                            } while (next != 1);
                        }
                        if (fileInputStreamOpenRead == null) {
                            return;
                        }
                    } catch (Exception e3) {
                        e2 = e3;
                        Log.w(TAG, "Error reading persistent services, starting from scratch", e2);
                        if (fileInputStreamOpenRead == null) {
                        }
                    }
                    fileInputStreamOpenRead.close();
                    return;
                } catch (Throwable th2) {
                    th = th2;
                    if (0 != 0) {
                        try {
                            fileInputStream.close();
                        } catch (IOException unused) {
                        }
                    }
                    throw th;
                }
            } catch (Exception e4) {
                fileInputStreamOpenRead = null;
                e2 = e4;
            } catch (Throwable th3) {
                th = th3;
                if (0 != 0) {
                    fileInputStream.close();
                }
                throw th;
            }
            fileInputStreamOpenRead.close();
            return;
        } catch (IOException unused2) {
            return;
        }
        Log.w(TAG, "Error reading persistent services, starting from scratch", e2);
        if (fileInputStreamOpenRead == null) {
        }
    }

    private void writePersistentServicesLocked() {
        if (this.mSerializerAndParser == null) {
            return;
        }
        FileOutputStream fileOutputStream = null;
        try {
            FileOutputStream fileOutputStreamStartWrite = this.mPersistentServicesFile.startWrite();
            try {
                f fVar = new f();
                fVar.setOutput(fileOutputStreamStartWrite, "utf-8");
                fVar.startDocument(null, Boolean.TRUE);
                fVar.setFeature("http://xmlpull.org/v1/doc/features.html#indent-output", true);
                fVar.startTag(null, "services");
                for (int i2 = 0; i2 < this.mUserServices.size(); i2++) {
                    for (Map.Entry<V, Integer> entry : this.mUserServices.valueAt(i2).persistentServices.entrySet()) {
                        fVar.startTag(null, "service");
                        fVar.attribute(null, GrantCredentialsPermissionActivity.EXTRAS_REQUESTING_UID, Integer.toString(entry.getValue().intValue()));
                        this.mSerializerAndParser.writeAsXml(entry.getKey(), fVar);
                        fVar.endTag(null, "service");
                    }
                }
                fVar.endTag(null, "services");
                fVar.endDocument();
                this.mPersistentServicesFile.finishWrite(fileOutputStreamStartWrite);
            } catch (IOException e2) {
                e = e2;
                fileOutputStream = fileOutputStreamStartWrite;
                Log.w(TAG, "Error writing accounts", e);
                if (fileOutputStream != null) {
                    this.mPersistentServicesFile.failWrite(fileOutputStream);
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
                generateServicesMap(i2);
            }
            collectionUnmodifiableCollection = Collections.unmodifiableCollection(new ArrayList(userServicesFindOrCreateUserLocked.services.values()));
        }
        return collectionUnmodifiableCollection;
    }

    public RegisteredServicesCacheListener<V> getListener() {
        RegisteredServicesCacheListener<V> registeredServicesCacheListener;
        synchronized (this) {
            registeredServicesCacheListener = this.mListener;
        }
        return registeredServicesCacheListener;
    }

    public ServiceInfo<V> getServiceInfo(V v2, int i2) {
        ServiceInfo<V> serviceInfo;
        synchronized (this.mServicesLock) {
            UserServices<V> userServicesFindOrCreateUserLocked = findOrCreateUserLocked(i2);
            if (userServicesFindOrCreateUserLocked.services == null) {
                generateServicesMap(i2);
            }
            serviceInfo = userServicesFindOrCreateUserLocked.services.get(v2);
        }
        return serviceInfo;
    }

    public void invalidateCache(int i2) {
        synchronized (this.mServicesLock) {
            findOrCreateUserLocked(i2).services = null;
        }
    }

    public abstract V parseServiceAttributes(Resources resources, String str, AttributeSet attributeSet);

    public void setListener(RegisteredServicesCacheListener<V> registeredServicesCacheListener, Handler handler) {
        if (handler == null) {
            handler = new Handler(this.mContext.getMainLooper());
        }
        synchronized (this) {
            this.mHandler = handler;
            this.mListener = registeredServicesCacheListener;
        }
    }
}
