.class public final synthetic Li/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroidx/fragment/app/Fragment;


# direct methods
.method public synthetic constructor <init>(Landroidx/fragment/app/Fragment;I)V
    .locals 0

    iput p2, p0, Li/d;->b:I

    iput-object p1, p0, Li/d;->c:Landroidx/fragment/app/Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget p1, p0, Li/d;->b:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const-string v1, "this$0"

    .line 5
    .line 6
    iget-object v2, p0, Li/d;->c:Landroidx/fragment/app/Fragment;

    .line 7
    .line 8
    packed-switch p1, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :pswitch_0
    check-cast v2, Lcom/syu/carlink/fragment/LogoFragment;

    .line 13
    .line 14
    sget p1, Lcom/syu/carlink/fragment/LogoFragment;->g:I

    .line 15
    .line 16
    invoke-static {v2, v1}, Lt/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 26
    .line 27
    .line 28
    :cond_0
    return-void

    .line 29
    :pswitch_1
    check-cast v2, Lcom/syu/carlink/fragment/LogoFragment;

    .line 30
    .line 31
    sget p1, Lcom/syu/carlink/fragment/LogoFragment;->g:I

    .line 32
    .line 33
    invoke-static {v2, v1}, Lt/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget-object p1, v2, Lcom/syu/carlink/fragment/LogoFragment;->b:Landroid/view/View;

    .line 37
    .line 38
    if-eqz p1, :cond_1

    .line 39
    .line 40
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-nez v1, :cond_1

    .line 45
    .line 46
    const/16 v1, 0x8

    .line 47
    .line 48
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 49
    .line 50
    .line 51
    :cond_1
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    instance-of v1, p1, Lcom/syu/carlink/MainActivity;

    .line 56
    .line 57
    if-eqz v1, :cond_2

    .line 58
    .line 59
    move-object v0, p1

    .line 60
    check-cast v0, Lcom/syu/carlink/MainActivity;

    .line 61
    .line 62
    :cond_2
    if-eqz v0, :cond_3

    .line 63
    .line 64
    iget-object p1, v0, Lcom/syu/carlink/MainActivity;->f:Lcom/syu/carlink/fragment/SettingsFragment;

    .line 65
    .line 66
    if-eqz p1, :cond_3

    .line 67
    .line 68
    invoke-virtual {v0, p1}, Lcom/syu/carlink/MainActivity;->m(Landroidx/fragment/app/Fragment;)V

    .line 69
    .line 70
    .line 71
    :cond_3
    return-void

    .line 72
    :goto_0
    check-cast v2, Lcom/syu/carlink/fragment/CarMarkFragment;

    .line 73
    .line 74
    sget p1, Lcom/syu/carlink/fragment/CarMarkFragment;->b:I

    .line 75
    .line 76
    invoke-static {v2, v1}, Lt/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    instance-of v1, p1, Lcom/syu/carlink/MainActivity;

    .line 84
    .line 85
    if-eqz v1, :cond_4

    .line 86
    .line 87
    move-object v0, p1

    .line 88
    check-cast v0, Lcom/syu/carlink/MainActivity;

    .line 89
    .line 90
    :cond_4
    if-eqz v0, :cond_5

    .line 91
    .line 92
    iget-object p1, v0, Lcom/syu/carlink/MainActivity;->f:Lcom/syu/carlink/fragment/SettingsFragment;

    .line 93
    .line 94
    if-eqz p1, :cond_5

    .line 95
    .line 96
    invoke-virtual {v0, p1}, Lcom/syu/carlink/MainActivity;->m(Landroidx/fragment/app/Fragment;)V

    .line 97
    .line 98
    .line 99
    :cond_5
    return-void

    .line 100
    nop

    .line 101
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
