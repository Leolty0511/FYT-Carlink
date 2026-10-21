.class Lcom/google/android/projection/sink/settings/SimulationSettingsActivity$QueryAddressTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/projection/sink/settings/SimulationSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "QueryAddressTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private dialog:Landroid/app/ProgressDialog;

.field private final location:Landroid/location/Location;

.field private final preference:Landroid/preference/Preference;

.field final synthetic this$0:Lcom/google/android/projection/sink/settings/SimulationSettingsActivity;


# direct methods
.method public constructor <init>(Lcom/google/android/projection/sink/settings/SimulationSettingsActivity;Landroid/preference/Preference;Landroid/location/Location;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/projection/sink/settings/SimulationSettingsActivity$QueryAddressTask;->this$0:Lcom/google/android/projection/sink/settings/SimulationSettingsActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/projection/sink/settings/SimulationSettingsActivity$QueryAddressTask;->preference:Landroid/preference/Preference;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/google/android/projection/sink/settings/SimulationSettingsActivity$QueryAddressTask;->location:Landroid/location/Location;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/google/android/projection/sink/settings/SimulationSettingsActivity$QueryAddressTask;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    .line 2
    aget-object p1, p1, v0

    .line 3
    iget-object v1, p0, Lcom/google/android/projection/sink/settings/SimulationSettingsActivity$QueryAddressTask;->location:Landroid/location/Location;

    invoke-static {p1, v1}, Lcom/google/android/projection/sink/settings/SimulationSettingsActivity;->access$000(Ljava/lang/String;Landroid/location/Location;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 4
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/google/android/projection/sink/settings/SimulationSettingsActivity$QueryAddressTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method public onPostExecute(Ljava/lang/String;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/google/android/projection/sink/settings/SimulationSettingsActivity$QueryAddressTask;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    if-eqz p1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/google/android/projection/sink/settings/SimulationSettingsActivity$QueryAddressTask;->preference:Landroid/preference/Preference;

    invoke-virtual {v0}, Landroid/preference/Preference;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/projection/sink/settings/SimulationSettingsActivity$QueryAddressTask;->preference:Landroid/preference/Preference;

    invoke-virtual {v1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 4
    iget-object v0, p0, Lcom/google/android/projection/sink/settings/SimulationSettingsActivity$QueryAddressTask;->preference:Landroid/preference/Preference;

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/google/android/projection/sink/settings/SimulationSettingsActivity$QueryAddressTask;->this$0:Lcom/google/android/projection/sink/settings/SimulationSettingsActivity;

    sget v0, Lcom/google/android/projection/sink/R$string;->invalid_address:I

    .line 6
    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x1

    .line 7
    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 8
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method public onPreExecute()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/sink/settings/SimulationSettingsActivity$QueryAddressTask;->this$0:Lcom/google/android/projection/sink/settings/SimulationSettingsActivity;

    .line 2
    .line 3
    sget v1, Lcom/google/android/projection/sink/R$string;->checking_address:I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget-object v2, p0, Lcom/google/android/projection/sink/settings/SimulationSettingsActivity$QueryAddressTask;->this$0:Lcom/google/android/projection/sink/settings/SimulationSettingsActivity;

    .line 10
    .line 11
    sget v3, Lcom/google/android/projection/sink/R$string;->please_wait:I

    .line 12
    .line 13
    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-static {v0, v1, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iput-object v0, p0, Lcom/google/android/projection/sink/settings/SimulationSettingsActivity$QueryAddressTask;->dialog:Landroid/app/ProgressDialog;

    .line 22
    .line 23
    return-void
.end method
