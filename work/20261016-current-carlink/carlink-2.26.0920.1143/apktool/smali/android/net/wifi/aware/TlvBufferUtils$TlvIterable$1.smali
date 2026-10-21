.class Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;",
        ">;"
    }
.end annotation


# instance fields
.field private mOffset:I

.field final synthetic this$0:Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;


# direct methods
.method public constructor <init>(Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable$1;->this$0:Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput p1, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable$1;->mOffset:I

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    iget v0, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable$1;->mOffset:I

    iget-object v1, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable$1;->this$0:Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;

    invoke-static {v1}, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;->access$000(Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;)I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;
    .locals 10

    .line 2
    invoke-virtual {p0}, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable$1;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3
    iget-object v0, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable$1;->this$0:Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;

    invoke-static {v0}, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;->access$100(Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;)I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v2, :cond_0

    .line 4
    iget-object v0, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable$1;->this$0:Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;

    invoke-static {v0}, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;->access$200(Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;)[B

    move-result-object v0

    iget v4, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable$1;->mOffset:I

    aget-byte v0, v0, v4

    :goto_0
    move v5, v0

    goto :goto_1

    .line 5
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable$1;->this$0:Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;

    invoke-static {v0}, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;->access$100(Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;)I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 6
    iget-object v0, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable$1;->this$0:Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;

    invoke-static {v0}, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;->access$200(Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;)[B

    move-result-object v0

    iget v4, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable$1;->mOffset:I

    sget-object v5, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v0, v4, v5}, Llibcore/io/Memory;->peekShort([BILjava/nio/ByteOrder;)S

    move-result v0

    goto :goto_0

    :cond_1
    move v5, v3

    .line 7
    :goto_1
    iget v0, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable$1;->mOffset:I

    iget-object v4, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable$1;->this$0:Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;

    invoke-static {v4}, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;->access$100(Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;)I

    move-result v4

    add-int/2addr v4, v0

    iput v4, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable$1;->mOffset:I

    .line 8
    iget-object v0, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable$1;->this$0:Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;

    invoke-static {v0}, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;->access$300(Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;)I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 9
    iget-object v0, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable$1;->this$0:Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;

    invoke-static {v0}, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;->access$200(Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;)[B

    move-result-object v0

    iget v1, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable$1;->mOffset:I

    aget-byte v3, v0, v1

    goto :goto_2

    .line 10
    :cond_2
    iget-object v0, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable$1;->this$0:Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;

    invoke-static {v0}, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;->access$300(Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;)I

    move-result v0

    if-ne v0, v1, :cond_3

    .line 11
    iget-object v0, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable$1;->this$0:Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;

    invoke-static {v0}, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;->access$200(Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;)[B

    move-result-object v0

    iget v1, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable$1;->mOffset:I

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v0, v1, v2}, Llibcore/io/Memory;->peekShort([BILjava/nio/ByteOrder;)S

    move-result v3

    .line 12
    :cond_3
    :goto_2
    iget v0, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable$1;->mOffset:I

    iget-object v1, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable$1;->this$0:Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;

    invoke-static {v1}, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;->access$300(Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;)I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable$1;->mOffset:I

    .line 13
    new-instance v0, Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;

    iget-object v1, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable$1;->this$0:Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;

    invoke-static {v1}, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;->access$200(Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;)[B

    move-result-object v7

    iget v8, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable$1;->mOffset:I

    const/4 v9, 0x0

    move-object v4, v0

    move v6, v3

    invoke-direct/range {v4 .. v9}, Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;-><init>(II[BILandroid/net/wifi/aware/TlvBufferUtils$1;)V

    .line 14
    iget v1, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable$1;->mOffset:I

    add-int/2addr v1, v3

    iput v1, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable$1;->mOffset:I

    return-object v0

    .line 15
    :cond_4
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable$1;->next()Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
