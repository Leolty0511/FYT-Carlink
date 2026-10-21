.class public Lchip/Chip$r;
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
    iput-object p1, p0, Lchip/Chip$r;->a:Lchip/Chip;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    :try_start_0
    check-cast p1, [I

    const/4 v0, 0x2

    new-array v1, v0, [B

    const/4 v2, 0x1

    .line 2
    aget v3, p1, v2

    int-to-byte v3, v3

    const/4 v4, 0x0

    aput-byte v3, v1, v4

    aget v0, p1, v0

    int-to-byte v0, v0

    aput-byte v0, v1, v2

    aget p1, p1, v4

    if-nez p1, :cond_1

    const/16 p1, 0xa5

    goto :goto_0

    :cond_1
    const/16 p1, 0xa7

    :goto_0
    invoke-static {v1, p1}, Lcom/syu/jni/ToolsJni;->cmd_149_write_data([BI)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
