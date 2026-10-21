.class Lcom/google/android/projection/sink/settings/SettingsActivity$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/projection/sink/settings/SettingsActivity;->setupSimplePreferencesScreen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/projection/sink/settings/SettingsActivity;


# direct methods
.method public constructor <init>(Lcom/google/android/projection/sink/settings/SettingsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/sink/settings/SettingsActivity$3;->this$0:Lcom/google/android/projection/sink/settings/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/sink/settings/SettingsActivity$3;->this$0:Lcom/google/android/projection/sink/settings/SettingsActivity;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-static {v0, v1, p2}, Lcom/google/android/projection/sink/settings/SettingsActivity;->access$200(Lcom/google/android/projection/sink/settings/SettingsActivity;Landroid/preference/PreferenceScreen;Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/google/android/projection/sink/settings/SettingsActivity$3;->this$0:Lcom/google/android/projection/sink/settings/SettingsActivity;

    .line 11
    .line 12
    invoke-virtual {v0, p1, p2}, Lcom/google/android/projection/sink/settings/SettingsActivity;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    return p1
.end method
