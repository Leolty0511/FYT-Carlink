.class public Lcom/android/fmradio/FmService;
.super Landroid/app/Service;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fmradio/FmService$a;
    }
.end annotation


# static fields
.field public static final RDS_CMD_NONE:I = -0x1

.field public static final RDS_CMD_NOTIFY_AF_CONFIG:I = 0x8

.field public static final RDS_CMD_NOTIFY_AF_SWITCH:I = 0x9

.field public static final RDS_CMD_NOTIFY_CODETABLE:I = 0xd

.field public static final RDS_CMD_NOTIFY_PI_Seeking:I = 0x5

.field public static final RDS_CMD_NOTIFY_PSNAME:I = 0xa

.field public static final RDS_CMD_NOTIFY_PTY_CONFIG:I = 0x7

.field public static final RDS_CMD_NOTIFY_PTY_Seeking:I = 0x4

.field public static final RDS_CMD_NOTIFY_PTY_TYPE:I = 0x2

.field public static final RDS_CMD_NOTIFY_TA_CONFIG:I = 0x6

.field public static final RDS_CMD_NOTIFY_TA_STATE:I = 0x1

.field public static final RDS_CMD_NOTIFY_TA_Seeking:I = 0x3

.field public static final RDS_CMD_NOTIFY_TEXT:I = 0xb

.field public static final RDS_CMD_NOTIFY_TP_STATE:I = 0x0

.field public static rdsTable:Ljava/lang/String; = ""


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private static Rdscallback(IIII)I
    .locals 1

    .line 1
    sget-object p2, Lcom/android/fmradio/b;->f0:Lcom/android/fmradio/b;

    const/4 p3, 0x0

    const/4 v0, 0x1

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    :pswitch_1
    const p0, 0xffff

    and-int/2addr p0, p1

    const/16 p1, 0xe0e

    if-eq p0, p1, :cond_2

    const/16 p1, 0xf0f

    if-eq p0, p1, :cond_1

    const/16 p1, 0x1b6e

    if-eq p0, p1, :cond_0

    goto/16 :goto_0

    :cond_0
    const-string p0, "LS2"

    .line 2
    sput-object p0, Lcom/android/fmradio/FmService;->rdsTable:Ljava/lang/String;

    goto/16 :goto_0

    :cond_1
    const-string p0, "SI"

    .line 3
    sput-object p0, Lcom/android/fmradio/FmService;->rdsTable:Ljava/lang/String;

    goto/16 :goto_0

    :cond_2
    const-string p0, "SO"

    .line 4
    sput-object p0, Lcom/android/fmradio/FmService;->rdsTable:Ljava/lang/String;

    goto/16 :goto_0

    .line 5
    :pswitch_2
    sget p0, Lw0/d;->r:I

    if-eq p0, v0, :cond_4

    sget p0, Lw0/d;->s:I

    if-eq p0, v0, :cond_4

    iget p0, p2, Lcom/android/fmradio/b;->a:I

    sget p1, Lcom/android/fmradio/b;->e0:I

    if-eq p0, p1, :cond_4

    .line 6
    invoke-virtual {p2}, Lcom/android/fmradio/b;->l0()V

    goto :goto_0

    .line 7
    :pswitch_3
    sget p0, Lw0/d;->r:I

    if-eq p0, v0, :cond_4

    sget p0, Lw0/d;->s:I

    if-eq p0, v0, :cond_4

    iget p0, p2, Lcom/android/fmradio/b;->a:I

    sget p1, Lcom/android/fmradio/b;->e0:I

    if-eq p0, p1, :cond_4

    const/16 p0, 0x1e

    const-string p1, "PSname"

    .line 8
    invoke-virtual {p2, p0, p1}, Lcom/android/fmradio/b;->X(ILjava/lang/String;)[I

    move-result-object p0

    .line 9
    sget-object p1, Lcom/android/fmradio/FmService;->rdsTable:Ljava/lang/String;

    const-string v0, "ascii"

    invoke-virtual {p2, p0, p1, v0}, Lcom/android/fmradio/b;->U([ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 10
    invoke-virtual {p2, p0}, Lcom/android/fmradio/b;->t0(Ljava/lang/String;)V

    goto :goto_0

    .line 11
    :pswitch_4
    invoke-virtual {p2, p1, v0, p3, v0}, Lcom/android/fmradio/b;->D0(IZZZ)V

    goto :goto_0

    .line 12
    :pswitch_5
    invoke-static {p1}, Lw0/f;->q(I)V

    goto :goto_0

    :pswitch_6
    if-eq p1, v0, :cond_3

    if-nez p1, :cond_4

    .line 13
    :cond_3
    invoke-virtual {p2, p1}, Lcom/android/fmradio/b;->x0(I)V

    goto :goto_0

    .line 14
    :pswitch_7
    invoke-static {p1}, Lw0/f;->s(I)V

    goto :goto_0

    .line 15
    :pswitch_8
    invoke-static {p1}, Lw0/f;->t(I)V

    goto :goto_0

    .line 16
    :pswitch_9
    invoke-static {p1}, Lw0/f;->w(I)V

    goto :goto_0

    .line 17
    :pswitch_a
    invoke-virtual {p2, p1, p3}, Lcom/android/fmradio/b;->v0(IZ)V

    goto :goto_0

    .line 18
    :pswitch_b
    invoke-virtual {p2, p1}, Lcom/android/fmradio/b;->y0(I)V

    goto :goto_0

    :pswitch_c
    const/16 p0, 0x1b

    const-string p1, "TPstate"

    .line 19
    invoke-virtual {p2, p0, p1}, Lcom/android/fmradio/b;->a0(ILjava/lang/String;)I

    move-result p0

    invoke-virtual {p2, p0}, Lcom/android/fmradio/b;->z0(I)V

    :cond_4
    :goto_0
    return p3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static callback(II)I
    .locals 2

    .line 1
    sget-object p1, Lcom/android/fmradio/b;->f0:Lcom/android/fmradio/b;

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p1, p0, v0, v1, v1}, Lcom/android/fmradio/b;->D0(IZZZ)V

    return v1
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 1
    new-instance p1, Lcom/android/fmradio/FmService$a;

    invoke-direct {p1, p0, p0}, Lcom/android/fmradio/FmService$a;-><init>(Lcom/android/fmradio/FmService;Lcom/android/fmradio/FmService;)V

    return-object p1
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1

    return p1
.end method
