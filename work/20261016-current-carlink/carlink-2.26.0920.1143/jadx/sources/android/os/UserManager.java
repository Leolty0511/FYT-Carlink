package android.os;

import android.accounts.AccountManager;
import android.app.ActivityManager;
import android.app.admin.DevicePolicyManager;
import android.content.Context;
import android.content.Intent;
import android.content.IntentSender;
import android.content.pm.AppCloneUserInfo;
import android.content.pm.UserInfo;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.net.wifi.WifiEnterpriseConfig;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import com.android.internal.R;
import com.android.internal.os.RoSystemProperties;
import java.io.IOException;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class UserManager {
    private static final String ACTION_CREATE_USER = "android.os.action.CREATE_USER";
    public static final String ACTION_USER_RESTRICTIONS_CHANGED = "android.os.action.USER_RESTRICTIONS_CHANGED";
    public static final String ALLOW_PARENT_PROFILE_APP_LINKING = "allow_parent_profile_app_linking";
    public static final String DISALLOW_ADD_MANAGED_PROFILE = "no_add_managed_profile";
    public static final String DISALLOW_ADD_USER = "no_add_user";
    public static final String DISALLOW_ADJUST_VOLUME = "no_adjust_volume";
    public static final String DISALLOW_APPS_CONTROL = "no_control_apps";
    public static final String DISALLOW_AUTOFILL = "no_autofill";
    public static final String DISALLOW_BLUETOOTH = "no_bluetooth";
    public static final String DISALLOW_BLUETOOTH_SHARING = "no_bluetooth_sharing";
    public static final String DISALLOW_CAMERA = "no_camera";
    public static final String DISALLOW_CONFIG_BLUETOOTH = "no_config_bluetooth";
    public static final String DISALLOW_CONFIG_CELL_BROADCASTS = "no_config_cell_broadcasts";
    public static final String DISALLOW_CONFIG_CREDENTIALS = "no_config_credentials";
    public static final String DISALLOW_CONFIG_MOBILE_NETWORKS = "no_config_mobile_networks";
    public static final String DISALLOW_CONFIG_TETHERING = "no_config_tethering";
    public static final String DISALLOW_CONFIG_VPN = "no_config_vpn";
    public static final String DISALLOW_CONFIG_WIFI = "no_config_wifi";
    public static final String DISALLOW_CREATE_WINDOWS = "no_create_windows";
    public static final String DISALLOW_CROSS_PROFILE_COPY_PASTE = "no_cross_profile_copy_paste";
    public static final String DISALLOW_DATA_ROAMING = "no_data_roaming";
    public static final String DISALLOW_DEBUGGING_FEATURES = "no_debugging_features";
    public static final String DISALLOW_FACTORY_RESET = "no_factory_reset";
    public static final String DISALLOW_FUN = "no_fun";
    public static final String DISALLOW_INSTALL_APPS = "no_install_apps";
    public static final String DISALLOW_INSTALL_UNKNOWN_SOURCES = "no_install_unknown_sources";
    public static final String DISALLOW_MODIFY_ACCOUNTS = "no_modify_accounts";
    public static final String DISALLOW_MOUNT_PHYSICAL_MEDIA = "no_physical_media";
    public static final String DISALLOW_NETWORK_RESET = "no_network_reset";

    @Deprecated
    public static final String DISALLOW_OEM_UNLOCK = "no_oem_unlock";
    public static final String DISALLOW_OUTGOING_BEAM = "no_outgoing_beam";
    public static final String DISALLOW_OUTGOING_CALLS = "no_outgoing_calls";
    public static final String DISALLOW_RECORD_AUDIO = "no_record_audio";
    public static final String DISALLOW_REMOVE_MANAGED_PROFILE = "no_remove_managed_profile";
    public static final String DISALLOW_REMOVE_USER = "no_remove_user";
    public static final String DISALLOW_RUN_IN_BACKGROUND = "no_run_in_background";
    public static final String DISALLOW_SAFE_BOOT = "no_safe_boot";
    public static final String DISALLOW_SET_USER_ICON = "no_set_user_icon";
    public static final String DISALLOW_SET_WALLPAPER = "no_set_wallpaper";
    public static final String DISALLOW_SHARE_LOCATION = "no_share_location";
    public static final String DISALLOW_SMS = "no_sms";
    public static final String DISALLOW_UNINSTALL_APPS = "no_uninstall_apps";
    public static final String DISALLOW_UNMUTE_DEVICE = "disallow_unmute_device";
    public static final String DISALLOW_UNMUTE_MICROPHONE = "no_unmute_microphone";
    public static final String DISALLOW_USB_FILE_TRANSFER = "no_usb_file_transfer";
    public static final String DISALLOW_WALLPAPER = "no_wallpaper";
    public static final String ENSURE_VERIFY_APPS = "ensure_verify_apps";
    public static final String EXTRA_USER_ACCOUNT_NAME = "android.os.extra.USER_ACCOUNT_NAME";
    public static final String EXTRA_USER_ACCOUNT_OPTIONS = "android.os.extra.USER_ACCOUNT_OPTIONS";
    public static final String EXTRA_USER_ACCOUNT_TYPE = "android.os.extra.USER_ACCOUNT_TYPE";
    public static final String EXTRA_USER_NAME = "android.os.extra.USER_NAME";
    public static final String KEY_RESTRICTIONS_PENDING = "restrictions_pending";
    public static final int PIN_VERIFICATION_FAILED_INCORRECT = -3;
    public static final int PIN_VERIFICATION_FAILED_NOT_SET = -2;
    public static final int PIN_VERIFICATION_SUCCESS = -1;
    public static final int RESTRICTION_NOT_SET = 0;
    public static final int RESTRICTION_SOURCE_DEVICE_OWNER = 2;
    public static final int RESTRICTION_SOURCE_PROFILE_OWNER = 4;
    public static final int RESTRICTION_SOURCE_SYSTEM = 1;
    private static final String TAG = "UserManager";
    public static final int USER_CREATION_FAILED_NOT_PERMITTED = 1;
    public static final int USER_CREATION_FAILED_NO_MORE_USERS = 2;
    private final Context mContext;
    private Boolean mIsManagedProfileCached;
    private final IUserManager mService;

    public static final class EnforcingUser implements Parcelable {
        public static final Parcelable.Creator<EnforcingUser> CREATOR = new Parcelable.Creator<EnforcingUser>() { // from class: android.os.UserManager.EnforcingUser.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public EnforcingUser createFromParcel(Parcel parcel) {
                return new EnforcingUser(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public EnforcingUser[] newArray(int i2) {
                return new EnforcingUser[i2];
            }
        };
        private final int userId;
        private final int userRestrictionSource;

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public UserHandle getUserHandle() {
            return UserHandle.of(this.userId);
        }

        public int getUserRestrictionSource() {
            return this.userRestrictionSource;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            parcel.writeInt(this.userId);
            parcel.writeInt(this.userRestrictionSource);
        }

        public EnforcingUser(int i2, int i3) {
            this.userId = i2;
            this.userRestrictionSource = i3;
        }

        private EnforcingUser(Parcel parcel) {
            this.userId = parcel.readInt();
            this.userRestrictionSource = parcel.readInt();
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface UserRestrictionSource {
    }

    public UserManager(Context context, IUserManager iUserManager) {
        this.mService = iUserManager;
        this.mContext = context.getApplicationContext();
    }

    public static Intent createUserCreationIntent(String str, String str2, String str3, PersistableBundle persistableBundle) {
        Intent intent = new Intent(ACTION_CREATE_USER);
        if (str != null) {
            intent.putExtra(EXTRA_USER_NAME, str);
        }
        if (str2 != null && str3 == null) {
            throw new IllegalArgumentException("accountType must be specified if accountName is specified");
        }
        if (str2 != null) {
            intent.putExtra(EXTRA_USER_ACCOUNT_NAME, str2);
        }
        if (str3 != null) {
            intent.putExtra(EXTRA_USER_ACCOUNT_TYPE, str3);
        }
        if (persistableBundle != null) {
            intent.putExtra(EXTRA_USER_ACCOUNT_OPTIONS, persistableBundle);
        }
        return intent;
    }

    public static UserManager get(Context context) {
        return (UserManager) context.getSystemService("user");
    }

    public static int getMaxSupportedUsers() {
        if (Build.ID.startsWith("JVP") || ActivityManager.isLowRamDeviceStatic()) {
            return 1;
        }
        return SystemProperties.getInt("fw.max_users", Resources.getSystem().getInteger(R.integer.config_multiuserMaximumUsers));
    }

    public static boolean isDeviceInDemoMode(Context context) {
        return Settings.Global.getInt(context.getContentResolver(), Settings.Global.DEVICE_DEMO_MODE, 0) > 0;
    }

    public static boolean isGuestUserEphemeral() {
        return Resources.getSystem().getBoolean(R.bool.config_guestUserEphemeral);
    }

    public static boolean isSplitSystemUser() {
        return RoSystemProperties.FW_SYSTEM_USER_SPLIT;
    }

    public static boolean supportsMultipleUsers() {
        return getMaxSupportedUsers() > 1 && SystemProperties.getBoolean("fw.show_multiuserui", Resources.getSystem().getBoolean(R.bool.config_enableMultiUserUI));
    }

    public boolean canAddMoreManagedProfiles(int i2, boolean z2) {
        try {
            return this.mService.canAddMoreManagedProfiles(i2, z2);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public boolean canAddMoreUsers() {
        List<UserInfo> users = getUsers(true);
        int size = users.size();
        int i2 = 0;
        for (int i3 = 0; i3 < size; i3++) {
            UserInfo userInfo = users.get(i3);
            if (!userInfo.isGuest() && !AppCloneUserInfo.isAppCloneUserId(userInfo.id)) {
                i2++;
            }
        }
        return i2 < getMaxSupportedUsers();
    }

    public boolean canHaveRestrictedProfile(int i2) {
        try {
            return this.mService.canHaveRestrictedProfile(i2);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public boolean canSwitchUsers() {
        return ((Settings.Global.getInt(this.mContext.getContentResolver(), Settings.Global.ALLOW_USER_SWITCHING_WHEN_SYSTEM_USER_LOCKED, 0) != 0) || isUserUnlocked(UserHandle.SYSTEM)) && !(TelephonyManager.getDefault().getCallState() != 0);
    }

    public void clearSeedAccountData() {
        try {
            this.mService.clearSeedAccountData();
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public UserInfo createGuest(Context context, String str) {
        try {
            UserInfo userInfoCreateUser = this.mService.createUser(str, 4);
            if (userInfoCreateUser != null) {
                Settings.Secure.putStringForUser(context.getContentResolver(), Settings.Secure.SKIP_FIRST_USE_HINTS, WifiEnterpriseConfig.ENGINE_ENABLE, userInfoCreateUser.id);
            }
            return userInfoCreateUser;
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public UserInfo createProfileForUser(String str, int i2, int i3) {
        return createProfileForUser(str, i2, i3, null);
    }

    public UserInfo createProfileForUserEvenWhenDisallowed(String str, int i2, int i3, String[] strArr) {
        try {
            return this.mService.createProfileForUserEvenWhenDisallowed(str, i2, i3, strArr);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public UserInfo createRestrictedProfile(String str) {
        try {
            UserHandle userHandleMyUserHandle = Process.myUserHandle();
            UserInfo userInfoCreateRestrictedProfile = this.mService.createRestrictedProfile(str, userHandleMyUserHandle.getIdentifier());
            if (userInfoCreateRestrictedProfile != null) {
                AccountManager.get(this.mContext).addSharedAccountsFromParentUser(userHandleMyUserHandle, UserHandle.of(userInfoCreateRestrictedProfile.id));
            }
            return userInfoCreateRestrictedProfile;
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public UserInfo createUser(String str, int i2) {
        try {
            UserInfo userInfoCreateUser = this.mService.createUser(str, i2);
            if (userInfoCreateUser != null && !userInfoCreateUser.isAdmin() && !userInfoCreateUser.isDemo()) {
                this.mService.setUserRestriction(DISALLOW_SMS, true, userInfoCreateUser.id);
                this.mService.setUserRestriction(DISALLOW_OUTGOING_CALLS, true, userInfoCreateUser.id);
            }
            return userInfoCreateUser;
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void evictCredentialEncryptionKey(int i2) {
        try {
            this.mService.evictCredentialEncryptionKey(i2);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public Bundle getApplicationRestrictions(String str) {
        try {
            return this.mService.getApplicationRestrictions(str);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public Drawable getBadgedDrawableForUser(Drawable drawable, UserHandle userHandle, Rect rect, int i2) {
        return this.mContext.getPackageManager().getUserBadgedDrawableForDensity(drawable, userHandle, rect, i2);
    }

    public Drawable getBadgedIconForUser(Drawable drawable, UserHandle userHandle) {
        return this.mContext.getPackageManager().getUserBadgedIcon(drawable, userHandle);
    }

    public CharSequence getBadgedLabelForUser(CharSequence charSequence, UserHandle userHandle) {
        return this.mContext.getPackageManager().getUserBadgedLabel(charSequence, userHandle);
    }

    public int getCredentialOwnerProfile(int i2) {
        try {
            return this.mService.getCredentialOwnerProfile(i2);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public Bundle getDefaultGuestRestrictions() {
        try {
            return this.mService.getDefaultGuestRestrictions();
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public int[] getEnabledProfileIds(int i2) {
        return getProfileIds(i2, true);
    }

    public List<UserInfo> getEnabledProfiles(int i2) {
        try {
            return this.mService.getProfiles(i2, true);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public int getManagedProfileBadge(int i2) {
        try {
            return this.mService.getManagedProfileBadge(i2);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public UserInfo getPrimaryUser() {
        try {
            return this.mService.getPrimaryUser();
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public int[] getProfileIds(int i2, boolean z2) {
        try {
            return this.mService.getProfileIds(i2, z2);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public int[] getProfileIdsWithDisabled(int i2) {
        return getProfileIds(i2, false);
    }

    public UserInfo getProfileParent(int i2) {
        try {
            return this.mService.getProfileParent(i2);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public List<UserInfo> getProfiles(int i2) {
        try {
            return this.mService.getProfiles(i2, false);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public String getSeedAccountName() {
        try {
            return this.mService.getSeedAccountName();
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public PersistableBundle getSeedAccountOptions() {
        try {
            return this.mService.getSeedAccountOptions();
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public String getSeedAccountType() {
        try {
            return this.mService.getSeedAccountType();
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public long getSerialNumberForUser(UserHandle userHandle) {
        return getUserSerialNumber(userHandle.getIdentifier());
    }

    public long[] getSerialNumbersOfUsers(boolean z2) {
        try {
            List<UserInfo> users = this.mService.getUsers(z2);
            int size = users.size();
            long[] jArr = new long[size];
            for (int i2 = 0; i2 < size; i2++) {
                jArr[i2] = users.get(i2).serialNumber;
            }
            return jArr;
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public String getUserAccount(int i2) {
        try {
            return this.mService.getUserAccount(i2);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public int getUserCount() {
        List<UserInfo> users = getUsers();
        if (users != null) {
            return users.size();
        }
        return 1;
    }

    public long getUserCreationTime(UserHandle userHandle) {
        try {
            return this.mService.getUserCreationTime(userHandle.getIdentifier());
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public UserHandle getUserForSerialNumber(long j2) {
        int userHandle = getUserHandle((int) j2);
        if (userHandle >= 0) {
            return new UserHandle(userHandle);
        }
        return null;
    }

    public int getUserHandle() {
        return UserHandle.myUserId();
    }

    public Bitmap getUserIcon(int i2) {
        try {
            ParcelFileDescriptor userIcon = this.mService.getUserIcon(i2);
            if (userIcon == null) {
                return null;
            }
            try {
                return BitmapFactory.decodeFileDescriptor(userIcon.getFileDescriptor());
            } finally {
                try {
                    userIcon.close();
                } catch (IOException unused) {
                }
            }
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public UserInfo getUserInfo(int i2) {
        try {
            return this.mService.getUserInfo(i2);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public String getUserName() {
        UserInfo userInfo = getUserInfo(getUserHandle());
        return userInfo == null ? "" : userInfo.name;
    }

    public List<UserHandle> getUserProfiles() {
        int[] profileIds = getProfileIds(UserHandle.myUserId(), true);
        ArrayList arrayList = new ArrayList(profileIds.length);
        for (int i2 : profileIds) {
            arrayList.add(UserHandle.of(i2));
        }
        return arrayList;
    }

    @Deprecated
    public int getUserRestrictionSource(String str, UserHandle userHandle) {
        try {
            return this.mService.getUserRestrictionSource(str, userHandle.getIdentifier());
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public List<EnforcingUser> getUserRestrictionSources(String str, UserHandle userHandle) {
        try {
            return this.mService.getUserRestrictionSources(str, userHandle.getIdentifier());
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public Bundle getUserRestrictions() {
        return getUserRestrictions(Process.myUserHandle());
    }

    public int getUserSerialNumber(int i2) {
        try {
            return this.mService.getUserSerialNumber(i2);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public List<UserInfo> getUsers() {
        try {
            return this.mService.getUsers(false);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public boolean hasBaseUserRestriction(String str, UserHandle userHandle) {
        try {
            return this.mService.hasBaseUserRestriction(str, userHandle.getIdentifier());
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public boolean hasUserRestriction(String str) {
        return hasUserRestriction(str, Process.myUserHandle());
    }

    public boolean isAdminUser() {
        return isUserAdmin(UserHandle.myUserId());
    }

    public boolean isDemoUser() {
        try {
            return this.mService.isDemoUser(UserHandle.myUserId());
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public boolean isEphemeralUser() {
        return isUserEphemeral(UserHandle.myUserId());
    }

    public boolean isGuestUser(int i2) {
        UserInfo userInfo = getUserInfo(i2);
        return userInfo != null && userInfo.isGuest();
    }

    public boolean isLinkedUser() {
        try {
            return this.mService.isRestricted();
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public boolean isManagedProfile() {
        Boolean bool = this.mIsManagedProfileCached;
        if (bool != null) {
            return bool.booleanValue();
        }
        try {
            Boolean boolValueOf = Boolean.valueOf(this.mService.isManagedProfile(UserHandle.myUserId()));
            this.mIsManagedProfileCached = boolValueOf;
            return boolValueOf.booleanValue();
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public boolean isPrimaryUser() {
        UserInfo userInfo = getUserInfo(UserHandle.myUserId());
        return userInfo != null && userInfo.isPrimary();
    }

    public boolean isQuietModeEnabled(UserHandle userHandle) {
        try {
            return this.mService.isQuietModeEnabled(userHandle.getIdentifier());
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public boolean isSameProfileGroup(int i2, int i3) {
        try {
            return this.mService.isSameProfileGroup(i2, i3);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public boolean isSystemUser() {
        return UserHandle.myUserId() == 0;
    }

    public boolean isUserAGoat() {
        return this.mContext.getPackageManager().isPackageAvailable("com.coffeestainstudios.goatsimulator");
    }

    public boolean isUserAdmin(int i2) {
        UserInfo userInfo = getUserInfo(i2);
        return userInfo != null && userInfo.isAdmin();
    }

    public boolean isUserEphemeral(int i2) {
        UserInfo userInfo = getUserInfo(i2);
        return userInfo != null && userInfo.isEphemeral();
    }

    public boolean isUserNameSet() {
        try {
            return this.mService.isUserNameSet(getUserHandle());
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public boolean isUserRunning(UserHandle userHandle) {
        return isUserRunning(userHandle.getIdentifier());
    }

    public boolean isUserRunningOrStopping(UserHandle userHandle) {
        try {
            return ActivityManager.getService().isUserRunning(userHandle.getIdentifier(), 1);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public boolean isUserSwitcherEnabled() {
        List<UserInfo> users;
        if (!supportsMultipleUsers() || isDeviceInDemoMode(this.mContext) || (users = getUsers(true)) == null || ActivityManager.isUserAMonkey()) {
            return false;
        }
        Iterator<UserInfo> it = users.iterator();
        int i2 = 0;
        while (it.hasNext()) {
            if (it.next().supportsSwitchToByUser()) {
                i2++;
            }
        }
        return i2 > 1 || (((DevicePolicyManager) this.mContext.getSystemService(DevicePolicyManager.class)).getGuestUserDisabled(null) ^ true);
    }

    public boolean isUserUnlocked() {
        return isUserUnlocked(Process.myUserHandle());
    }

    public boolean isUserUnlockingOrUnlocked(UserHandle userHandle) {
        return isUserUnlockingOrUnlocked(userHandle.getIdentifier());
    }

    public boolean markGuestForDeletion(int i2) {
        try {
            return this.mService.markGuestForDeletion(i2);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public boolean removeUser(int i2) {
        try {
            return this.mService.removeUser(i2);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public boolean removeUserEvenWhenDisallowed(int i2) {
        try {
            return this.mService.removeUserEvenWhenDisallowed(i2);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void setApplicationRestrictions(String str, Bundle bundle, UserHandle userHandle) {
        try {
            this.mService.setApplicationRestrictions(str, bundle, userHandle.getIdentifier());
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void setDefaultGuestRestrictions(Bundle bundle) {
        try {
            this.mService.setDefaultGuestRestrictions(bundle);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void setQuietModeEnabled(int i2, boolean z2) {
        try {
            this.mService.setQuietModeEnabled(i2, z2);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    @Deprecated
    public boolean setRestrictionsChallenge(String str) {
        return false;
    }

    public void setSeedAccountData(int i2, String str, String str2, PersistableBundle persistableBundle) {
        try {
            this.mService.setSeedAccountData(i2, str, str2, persistableBundle, true);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void setUserAccount(int i2, String str) {
        try {
            this.mService.setUserAccount(i2, str);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void setUserEnabled(int i2) {
        try {
            this.mService.setUserEnabled(i2);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void setUserIcon(int i2, Bitmap bitmap) {
        try {
            this.mService.setUserIcon(i2, bitmap);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void setUserName(int i2, String str) {
        try {
            this.mService.setUserName(i2, str);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    @Deprecated
    public void setUserRestriction(String str, boolean z2) {
        setUserRestriction(str, z2, Process.myUserHandle());
    }

    @Deprecated
    public void setUserRestrictions(Bundle bundle) {
        throw new UnsupportedOperationException("This method is no longer supported");
    }

    public boolean someUserHasSeedAccount(String str, String str2) {
        try {
            return this.mService.someUserHasSeedAccount(str, str2);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public boolean trySetQuietModeDisabled(int i2, IntentSender intentSender) {
        try {
            return this.mService.trySetQuietModeDisabled(i2, intentSender);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public UserInfo createProfileForUser(String str, int i2, int i3, String[] strArr) {
        try {
            return this.mService.createProfileForUser(str, i2, i3, strArr);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public int getUserHandle(int i2) {
        try {
            return this.mService.getUserHandle(i2);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public Bundle getUserRestrictions(UserHandle userHandle) {
        try {
            return this.mService.getUserRestrictions(userHandle.getIdentifier());
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public boolean hasUserRestriction(String str, UserHandle userHandle) {
        try {
            return this.mService.hasUserRestriction(str, userHandle.getIdentifier());
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public boolean isUserRunning(int i2) {
        try {
            return this.mService.isUserRunning(i2);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public boolean isUserUnlocked(UserHandle userHandle) {
        return isUserUnlocked(userHandle.getIdentifier());
    }

    public boolean isUserUnlockingOrUnlocked(int i2) {
        try {
            return this.mService.isUserUnlockingOrUnlocked(i2);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    @Deprecated
    public void setUserRestriction(String str, boolean z2, UserHandle userHandle) {
        try {
            this.mService.setUserRestriction(str, z2, userHandle.getIdentifier());
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    @Deprecated
    public void setUserRestrictions(Bundle bundle, UserHandle userHandle) {
        throw new UnsupportedOperationException("This method is no longer supported");
    }

    public Bundle getApplicationRestrictions(String str, UserHandle userHandle) {
        try {
            return this.mService.getApplicationRestrictionsForUser(str, userHandle.getIdentifier());
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public List<UserInfo> getUsers(boolean z2) {
        try {
            return this.mService.getUsers(z2);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public boolean isGuestUser() {
        UserInfo userInfo = getUserInfo(UserHandle.myUserId());
        return userInfo != null && userInfo.isGuest();
    }

    public boolean isUserUnlocked(int i2) {
        try {
            return this.mService.isUserUnlocked(i2);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public boolean isManagedProfile(int i2) {
        if (i2 == UserHandle.myUserId()) {
            return isManagedProfile();
        }
        try {
            return this.mService.isManagedProfile(i2);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }
}
