.class public Lk0/gh$j;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/gh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "j"
.end annotation


# instance fields
.field public final synthetic a:Lk0/gh;


# direct methods
.method public constructor <init>(Lk0/gh;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/gh$j;->a:Lk0/gh;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lk0/gh;Lk0/gh$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lk0/gh$j;-><init>(Lk0/gh;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.syu.canbus.fb.click"

    .line 2
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x5

    :try_start_0
    new-array p2, p1, [I

    const/16 v0, 0xe3

    const/4 v1, 0x0

    aput v0, p2, v1

    const/16 v0, 0x84

    const/4 v2, 0x1

    aput v0, p2, v2

    const/4 v0, 0x2

    aput v0, p2, v0

    const/16 v3, 0x60

    const/4 v4, 0x3

    aput v3, p2, v4

    const/4 v3, 0x4

    aput v1, p2, v3

    .line 3
    invoke-static {p2}, Lz/k;->s([I)V

    new-array p2, v4, [I

    aput v2, p2, v1

    const/16 v5, 0xc

    aput v5, p2, v2

    const/4 v5, 0x7

    aput v5, p2, v0

    .line 4
    invoke-static {p2}, Lz/k;->s([I)V

    .line 5
    sget p2, Lk0/nt;->a:I

    sparse-switch p2, :sswitch_data_0

    goto :goto_0

    .line 6
    :sswitch_0
    iget-object p2, p0, Lk0/gh$j;->a:Lk0/gh;

    invoke-static {p2}, Lk0/gh;->d3(Lk0/gh;)I

    move-result p2

    const/4 v5, -0x1

    if-nez p2, :cond_0

    new-array p1, p1, [B

    const/16 p2, 0x67

    aput-byte p2, p1, v1

    aput-byte v5, p1, v2

    aput-byte v1, p1, v0

    aput-byte v1, p1, v4

    const/16 p2, 0x66

    aput-byte p2, p1, v3

    .line 7
    invoke-static {p1}, Lz/k;->q([B)V

    goto :goto_0

    :cond_0
    new-array p1, p1, [B

    const/16 p2, 0x65

    aput-byte p2, p1, v1

    aput-byte v5, p1, v2

    aput-byte v1, p1, v0

    aput-byte v1, p1, v4

    const/16 p2, 0x64

    aput-byte p2, p1, v3

    .line 8
    invoke-static {p1}, Lz/k;->q([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 9
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x4e01c7 -> :sswitch_0
        0x4f01c7 -> :sswitch_0
        0x5001c7 -> :sswitch_0
        0x5101c7 -> :sswitch_0
        0x5401c7 -> :sswitch_0
    .end sparse-switch
.end method
