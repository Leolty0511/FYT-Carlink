.class public final Ll/a;
.super Ljava/lang/Thread;
.source "SourceFile"


# static fields
.field public static final synthetic f:I


# instance fields
.field public final b:Landroid/os/Handler;

.field public c:Z

.field public final d:Landroid/bluetooth/BluetoothSocket;

.field public final synthetic e:Ll/b;


# direct methods
.method public constructor <init>(Ll/b;Landroid/bluetooth/BluetoothDevice;Landroid/os/Handler;)V
    .locals 1

    .line 1
    const-string v0, "handler"

    .line 2
    .line 3
    invoke-static {p3, v0}, Lt/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Ll/a;->e:Ll/b;

    .line 7
    .line 8
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p3, p0, Ll/a;->b:Landroid/os/Handler;

    .line 12
    .line 13
    const-string p1, "00000000-deca-fade-deca-deafdecacafe"

    .line 14
    .line 15
    invoke-static {p1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p2, p1}, Landroid/bluetooth/BluetoothDevice;->createRfcommSocketToServiceRecord(Ljava/util/UUID;)Landroid/bluetooth/BluetoothSocket;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothSocket;->connect()V

    .line 24
    .line 25
    .line 26
    const-string p2, "BluetoothUtils"

    .line 27
    .line 28
    const-string p3, "=======>>> btSocketConnected()"

    .line 29
    .line 30
    invoke-static {p2, p3}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    const-string p2, "SV"

    .line 34
    .line 35
    invoke-static {p2}, Ll/b;->a(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    const/4 p2, 0x1

    .line 39
    iput-boolean p2, p0, Ll/a;->c:Z

    .line 40
    .line 41
    iput-object p1, p0, Ll/a;->d:Landroid/bluetooth/BluetoothSocket;

    .line 42
    .line 43
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Connection ===>>> socket: "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Ll/a;->d:Landroid/bluetooth/BluetoothSocket;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-string v2, "HDL"

    .line 18
    .line 19
    invoke-static {v2, v0}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    :goto_0
    iget-boolean v0, p0, Ll/a;->c:Z

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    const/16 v0, 0x400

    .line 27
    .line 28
    :try_start_0
    new-array v0, v0, [B

    .line 29
    .line 30
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothSocket;->getInputStream()Ljava/io/InputStream;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-lez v2, :cond_0

    .line 39
    .line 40
    iget-object v3, p0, Ll/a;->b:Landroid/os/Handler;

    .line 41
    .line 42
    iget-object v4, p0, Ll/a;->e:Ll/b;

    .line 43
    .line 44
    new-instance v5, Landroid/telecom/f;

    .line 45
    .line 46
    invoke-direct {v5, v0, v2, v4}, Landroid/telecom/f;-><init>([BILl/b;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v3, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :catch_0
    move-exception v0

    .line 54
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    return-void
.end method
