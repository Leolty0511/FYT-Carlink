.class public Lchip/Chip$p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo1/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lchip/Chip;->D()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lchip/Chip;


# direct methods
.method public constructor <init>(Lchip/Chip;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lchip/Chip$p;->a:Lchip/Chip;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    :try_start_0
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->byteValue()B

    move-result p1

    const/4 v0, 0x1

    new-array v1, v0, [B

    const/4 v2, 0x0

    aput-byte p1, v1, v2

    const/16 v2, 0xe

    .line 2
    invoke-static {v1, v2}, Lcom/syu/jni/ToolsJni;->cmd_149_write_data([BI)I

    .line 3
    invoke-static {}, Lg/e;->p()I

    move-result v1

    const/16 v2, 0x30

    if-eq v1, v2, :cond_1

    const/16 v1, 0x41

    .line 4
    invoke-static {v1}, Lg/e;->j(I)Z

    move-result v1

    if-nez v1, :cond_1

    const/16 v1, 0x42

    .line 5
    invoke-static {v1}, Lg/e;->j(I)Z

    move-result v1

    if-nez v1, :cond_1

    const/16 v1, 0x47

    .line 6
    invoke-static {v1}, Lg/e;->j(I)Z

    move-result v1

    if-nez v1, :cond_1

    const/16 v1, 0x43

    .line 7
    invoke-static {v1}, Lg/e;->j(I)Z

    move-result v1

    if-nez v1, :cond_1

    const/16 v1, 0x46

    .line 8
    invoke-static {v1}, Lg/e;->j(I)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "ro.fyt.realplatform"

    const-string v2, ""

    .line 9
    invoke-static {v1, v2}, Lo1/s0;->o(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "813CM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/16 v1, 0xa

    and-int/lit8 v2, p1, 0x1

    .line 10
    invoke-static {v1, v2}, Lcom/syu/jni/ToolsJni;->cmd_251_Normal_Io_Set(II)I

    const/16 v1, 0xb

    shr-int/2addr p1, v0

    and-int/2addr p1, v0

    .line 11
    invoke-static {v1, p1}, Lcom/syu/jni/ToolsJni;->cmd_251_Normal_Io_Set(II)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    return-void
.end method
