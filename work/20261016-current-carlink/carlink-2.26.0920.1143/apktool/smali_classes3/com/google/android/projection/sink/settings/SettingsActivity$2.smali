.class Lcom/google/android/projection/sink/settings/SettingsActivity$2;
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

    iput-object p1, p0, Lcom/google/android/projection/sink/settings/SettingsActivity$2;->this$0:Lcom/google/android/projection/sink/settings/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/sink/settings/SettingsActivity$2;->this$0:Lcom/google/android/projection/sink/settings/SettingsActivity;

    .line 2
    .line 3
    invoke-static {v0, p2}, Lcom/google/android/projection/sink/settings/SettingsActivity;->access$100(Lcom/google/android/projection/sink/settings/SettingsActivity;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/projection/sink/settings/SettingsActivity$2;->this$0:Lcom/google/android/projection/sink/settings/SettingsActivity;

    .line 7
    .line 8
    invoke-virtual {v0, p1, p2}, Lcom/google/android/projection/sink/settings/SettingsActivity;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    return p1
.end method
