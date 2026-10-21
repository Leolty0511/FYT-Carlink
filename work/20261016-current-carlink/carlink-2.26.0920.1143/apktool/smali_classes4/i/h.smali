.class public final synthetic Li/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/syu/carlink/fragment/SettingsFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/syu/carlink/fragment/SettingsFragment;I)V
    .locals 0

    iput p2, p0, Li/h;->b:I

    iput-object p1, p0, Li/h;->c:Lcom/syu/carlink/fragment/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget p1, p0, Li/h;->b:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    iget-object v1, p0, Li/h;->c:Lcom/syu/carlink/fragment/SettingsFragment;

    .line 5
    .line 6
    const-string v2, "this$0"

    .line 7
    .line 8
    packed-switch p1, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :pswitch_0
    sget p1, Lcom/syu/carlink/fragment/SettingsFragment;->e:I

    .line 13
    .line 14
    invoke-static {v1, v2}, Lt/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    instance-of v1, p1, Lcom/syu/carlink/MainActivity;

    .line 22
    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    move-object v0, p1

    .line 26
    check-cast v0, Lcom/syu/carlink/MainActivity;

    .line 27
    .line 28
    :cond_0
    if-eqz v0, :cond_1

    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/syu/carlink/MainActivity;->k()V

    .line 31
    .line 32
    .line 33
    :cond_1
    return-void

    .line 34
    :goto_0
    sget p1, Lcom/syu/carlink/fragment/SettingsFragment;->e:I

    .line 35
    .line 36
    invoke-static {v1, v2}, Lt/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    instance-of v1, p1, Lcom/syu/carlink/MainActivity;

    .line 44
    .line 45
    if-eqz v1, :cond_2

    .line 46
    .line 47
    check-cast p1, Lcom/syu/carlink/MainActivity;

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_2
    move-object p1, v0

    .line 51
    :goto_1
    if-eqz p1, :cond_4

    .line 52
    .line 53
    iget-object v1, p1, Lcom/syu/carlink/MainActivity;->d:Lcom/syu/carlink/fragment/CarMarkFragment;

    .line 54
    .line 55
    if-eqz v1, :cond_3

    .line 56
    .line 57
    invoke-virtual {p1, v1}, Lcom/syu/carlink/MainActivity;->m(Landroidx/fragment/app/Fragment;)V

    .line 58
    .line 59
    .line 60
    goto :goto_2

    .line 61
    :cond_3
    const-string p1, "carMarkFragment"

    .line 62
    .line 63
    invoke-static {p1}, Lt/b;->B(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    throw v0

    .line 67
    :cond_4
    :goto_2
    return-void

    .line 68
    nop

    .line 69
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
