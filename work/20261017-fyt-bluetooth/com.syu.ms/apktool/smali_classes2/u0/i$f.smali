.class public Lu0/i$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lu0/i;->x3(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lu0/i;


# direct methods
.method public constructor <init>(Lu0/i;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lu0/i$f;->b:Lu0/i;

    iput p2, p0, Lu0/i$f;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 1
    iget v0, p0, Lu0/i$f;->a:I

    const/16 v1, 0x424

    const/16 v2, 0x55

    const/16 v3, -0x56

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-gt v0, v7, :cond_3

    .line 2
    invoke-static {v4, v1}, Lcom/syu/jni/ToolsJni;->cmd_148_read_data(II)[B

    move-result-object v0

    .line 3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "rotateScreen =====>>> "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lo1/s0;->d([B)[Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "MCU"

    invoke-static {v9, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-static {v0, v6}, Lo1/s0;->f([BI)Z

    move-result v8

    const/4 v10, -0x1

    if-eqz v8, :cond_1

    aget-byte v8, v0, v5

    if-ne v8, v3, :cond_1

    aget-byte v8, v0, v7

    if-ne v8, v2, :cond_1

    .line 5
    aget-byte v2, v0, v6

    and-int/lit16 v2, v2, 0xff

    .line 6
    iget v3, p0, Lu0/i$f;->a:I

    if-ne v3, v7, :cond_0

    goto :goto_0

    :cond_0
    move v10, v7

    :goto_0
    add-int/2addr v2, v10

    add-int/lit8 v2, v2, 0x4

    .line 7
    rem-int/lit8 v2, v2, 0x4

    int-to-byte v2, v2

    aput-byte v2, v0, v6

    goto :goto_2

    :cond_1
    const-string v0, "ro.sf.swrotation"

    .line 8
    invoke-static {v0, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    div-int/lit8 v0, v0, 0x5a

    rem-int/lit8 v0, v0, 0x4

    .line 9
    iget v8, p0, Lu0/i$f;->a:I

    if-ne v8, v7, :cond_2

    goto :goto_1

    :cond_2
    move v10, v7

    :goto_1
    add-int/2addr v0, v10

    add-int/lit8 v0, v0, 0x4

    rem-int/lit8 v0, v0, 0x4

    int-to-byte v0, v0

    new-array v4, v4, [B

    aput-byte v3, v4, v5

    aput-byte v2, v4, v7

    aput-byte v0, v4, v6

    move-object v0, v4

    :goto_2
    new-array v2, v7, [Ljava/lang/Object;

    .line 10
    aget-byte v3, v0, v6

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v2, v5

    const-string v3, "================>>> rotateScreen %d "

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    invoke-static {v0, v1}, Lcom/syu/jni/ToolsJni;->cmd_149_write_data([BI)I

    goto :goto_3

    :cond_3
    sub-int/2addr v0, v6

    new-array v4, v4, [B

    aput-byte v3, v4, v5

    aput-byte v2, v4, v7

    int-to-byte v0, v0

    aput-byte v0, v4, v6

    .line 12
    invoke-static {v4, v1}, Lcom/syu/jni/ToolsJni;->cmd_149_write_data([BI)I

    :goto_3
    return-void
.end method
