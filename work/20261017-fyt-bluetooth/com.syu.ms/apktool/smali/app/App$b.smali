.class public Lapp/App$b;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lapp/App;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lapp/App;


# direct methods
.method public constructor <init>(Lapp/App;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lapp/App$b;->a:Lapp/App;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    const/4 v0, 0x2

    const/16 v1, 0xaa

    .line 2
    invoke-static {v0, v1}, Lcom/syu/jni/ToolsJni;->cmd_148_read_data(II)[B

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    .line 3
    array-length v5, v2

    if-lt v5, v0, :cond_0

    aget-byte v0, v2, v4

    and-int/lit16 v0, v0, 0xff

    const/16 v5, 0x55

    if-ne v0, v5, :cond_0

    aget-byte v0, v2, v3

    and-int/lit16 v0, v0, 0xff

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    sput-boolean v3, Lu0/b;->a:Z

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mcuRecognition ===== DataMain.newMcu : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lu0/b;->a:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MCU"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
