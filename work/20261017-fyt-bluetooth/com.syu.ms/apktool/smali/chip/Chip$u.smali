.class public Lchip/Chip$u;
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
    iput-object p1, p0, Lchip/Chip$u;->a:Lchip/Chip;

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
    check-cast p1, [I

    const/4 v0, 0x1

    .line 2
    invoke-static {p1, v0}, Lo1/s0;->h([II)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    aget v2, p1, v1

    if-nez v2, :cond_2

    new-array v2, v0, [B

    .line 3
    aget p1, p1, v0

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    int-to-byte p1, v0

    aput-byte p1, v2, v1

    const/16 p1, 0xae

    invoke-static {v2, p1}, Lcom/syu/jni/ToolsJni;->cmd_149_write_data([BI)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    return-void
.end method
