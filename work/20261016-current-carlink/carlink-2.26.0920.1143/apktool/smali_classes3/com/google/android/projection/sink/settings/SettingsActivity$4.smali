.class Lcom/google/android/projection/sink/settings/SettingsActivity$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


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

    iput-object p1, p0, Lcom/google/android/projection/sink/settings/SettingsActivity$4;->this$0:Lcom/google/android/projection/sink/settings/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 0

    iget-object p1, p0, Lcom/google/android/projection/sink/settings/SettingsActivity$4;->this$0:Lcom/google/android/projection/sink/settings/SettingsActivity;

    invoke-static {p1}, Lcom/google/android/projection/sink/settings/SettingsActivity;->access$300(Lcom/google/android/projection/sink/settings/SettingsActivity;)Z

    move-result p1

    return p1
.end method
