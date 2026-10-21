.class public Lchip/Chip$n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo1/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lchip/Chip;
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
    iput-object p1, p0, Lchip/Chip$n;->a:Lchip/Chip;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)V
    .locals 8

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    :try_start_0
    check-cast p1, [B

    const/16 v0, 0x92

    new-array v1, v0, [B

    .line 2
    array-length v2, p1

    const/16 v3, 0x91

    const/4 v4, 0x0

    if-ne v2, v3, :cond_2

    .line 3
    array-length v2, p1

    invoke-static {p1, v4, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4
    array-length v2, p1

    move v5, v4

    move v6, v5

    :goto_0
    if-ge v5, v2, :cond_1

    aget-byte v7, p1, v5

    add-int/2addr v6, v7

    int-to-byte v6, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    aput-byte v6, v1, v3

    :cond_2
    const-string p1, "MCU"

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "write steer mem Data: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1, v4, v0}, Lo1/b0;->d([BII)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " len : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    iget-object p1, p0, Lchip/Chip$n;->a:Lchip/Chip;

    iget-object p1, p1, Lchip/Chip;->a:Lo1/h0;

    invoke-static {v1}, Lo1/s0;->e([B)[I

    move-result-object v0

    const/16 v2, 0xd4

    invoke-virtual {p1, v2, v0}, Lo1/h0;->r(I[I)V

    .line 7
    iget-object p1, p0, Lchip/Chip$n;->a:Lchip/Chip;

    iget-object p1, p1, Lchip/Chip;->a:Lo1/h0;

    invoke-virtual {p1, v2}, Lo1/h0;->e(I)V

    const/16 p1, 0x13

    .line 8
    invoke-static {v1, p1}, Lcom/syu/jni/ToolsJni;->cmd_149_write_data([BI)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
