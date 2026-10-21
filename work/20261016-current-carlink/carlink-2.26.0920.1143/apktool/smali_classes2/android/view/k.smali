.class public abstract synthetic Landroid/view/k;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/view/WindowManagerPolicy;I)I
    .locals 1

    packed-switch p1, :pswitch_data_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Unknown sub-window type: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WindowManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :pswitch_0
    const/4 p0, 0x3

    return p0

    :pswitch_1
    const/4 p0, -0x1

    return p0

    :pswitch_2
    const/4 p0, 0x2

    return p0

    :pswitch_3
    const/4 p0, -0x2

    return p0

    :pswitch_4
    const/4 p0, 0x1

    return p0

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static b(Landroid/view/WindowManagerPolicy;I)I
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/view/WindowManager$LayoutParams;->isSystemAlertWindowType(I)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-interface {p0, p1, v0}, Landroid/view/WindowManagerPolicy;->getWindowLayerFromTypeLw(IZ)I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    return p0

    .line 13
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 14
    .line 15
    const-string p1, "Use getWindowLayerFromTypeLw() or getWindowLayerLw() for alert window types"

    .line 16
    .line 17
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    throw p0
.end method

.method public static c(Landroid/view/WindowManagerPolicy;IZ)I
    .locals 3

    const/4 p0, 0x2

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    const/16 v1, 0x63

    if-gt p1, v1, :cond_0

    return p0

    :cond_0
    const/16 v1, 0xb

    const/16 v2, 0xa

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Unknown window type: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "WindowManager"

    invoke-static {p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    :pswitch_1
    const/16 p0, 0xc

    return p0

    :pswitch_2
    const/16 p0, 0x19

    :pswitch_3
    return p0

    :pswitch_4
    const/16 p0, 0x1e

    return p0

    :pswitch_5
    const/4 p0, 0x5

    :pswitch_6
    return p0

    :pswitch_7
    const/16 p0, 0x1b

    return p0

    :pswitch_8
    const/16 p0, 0x1c

    return p0

    :pswitch_9
    const/16 p0, 0x18

    return p0

    :pswitch_a
    const/16 p0, 0xd

    return p0

    :pswitch_b
    const/4 p0, 0x6

    return p0

    :pswitch_c
    const/16 p0, 0x20

    return p0

    :pswitch_d
    const/16 p0, 0x15

    return p0

    :pswitch_e
    const/16 p0, 0x17

    return p0

    :pswitch_f
    const/16 p0, 0x21

    return p0

    :pswitch_10
    const/16 p0, 0x11

    return p0

    :pswitch_11
    const/16 p0, 0x1d

    return p0

    :pswitch_12
    const/16 p0, 0x1f

    return p0

    :pswitch_13
    const/16 p0, 0x13

    return p0

    :pswitch_14
    return v0

    :pswitch_15
    const/16 p0, 0xf

    return p0

    :pswitch_16
    const/16 p0, 0xe

    return p0

    :pswitch_17
    if-eqz p2, :cond_1

    const/16 v2, 0x1a

    :cond_1
    return v2

    :pswitch_18
    const/16 p0, 0x14

    return p0

    :pswitch_19
    const/4 p0, 0x7

    return p0

    :pswitch_1a
    const/16 p0, 0x9

    return p0

    :pswitch_1b
    if-eqz p2, :cond_2

    const/16 v1, 0x16

    :cond_2
    return v1

    :pswitch_1c
    const/16 p0, 0x8

    return p0

    :pswitch_1d
    if-eqz p2, :cond_3

    goto :goto_0

    :cond_3
    move v1, v2

    :goto_0
    return v1

    :pswitch_1e
    const/4 p0, 0x3

    return p0

    :pswitch_1f
    const/4 p0, 0x4

    return p0

    :pswitch_20
    const/16 p0, 0x12

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x7d0
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_1f
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_6
        :pswitch_1
    .end packed-switch
.end method

.method public static d(Landroid/view/WindowManagerPolicy;Landroid/view/WindowManagerPolicy$WindowState;)I
    .locals 1

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getBaseType()I

    move-result v0

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->canAddInternalSystemWindow()Z

    move-result p1

    invoke-interface {p0, v0, p1}, Landroid/view/WindowManagerPolicy;->getWindowLayerFromTypeLw(IZ)I

    move-result p0

    return p0
.end method

.method public static e(Landroid/view/WindowManagerPolicy;Z)V
    .locals 0

    return-void
.end method
