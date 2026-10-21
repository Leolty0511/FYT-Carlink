.class Landroid/preference/PreferenceFragment$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/preference/PreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/preference/PreferenceFragment;


# direct methods
.method public constructor <init>(Landroid/preference/PreferenceFragment;)V
    .locals 0

    iput-object p1, p0, Landroid/preference/PreferenceFragment$1;->this$0:Landroid/preference/PreferenceFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p1, v0, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    iget-object p1, p0, Landroid/preference/PreferenceFragment$1;->this$0:Landroid/preference/PreferenceFragment;

    .line 8
    .line 9
    invoke-static {p1}, Landroid/preference/PreferenceFragment;->access$000(Landroid/preference/PreferenceFragment;)V

    .line 10
    .line 11
    .line 12
    :goto_0
    return-void
.end method
