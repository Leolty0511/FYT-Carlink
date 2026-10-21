.class public final Lcom/syu/carlink/carplay/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:[B

.field public final b:Ls/a;

.field public c:I

.field public d:I

.field public final e:Ls/a;

.field public f:Z

.field public final g:Ls/a;

.field public h:I

.field public i:I

.field public j:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x4

    .line 5
    new-array v0, v0, [B

    .line 6
    .line 7
    fill-array-data v0, :array_0

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/syu/carlink/carplay/c;->a:[B

    .line 11
    .line 12
    sget-object v0, Lcom/syu/carlink/carplay/VideoFrame$data$2;->INSTANCE:Lcom/syu/carlink/carplay/VideoFrame$data$2;

    .line 13
    .line 14
    invoke-static {v0}, Lkotlin/a;->c(Lz/a;)Ls/a;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iput-object v0, p0, Lcom/syu/carlink/carplay/c;->b:Ls/a;

    .line 19
    .line 20
    sget-object v0, Lcom/syu/carlink/carplay/VideoFrame$checkedHeader$2;->INSTANCE:Lcom/syu/carlink/carplay/VideoFrame$checkedHeader$2;

    .line 21
    .line 22
    invoke-static {v0}, Lkotlin/a;->c(Lz/a;)Ls/a;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iput-object v0, p0, Lcom/syu/carlink/carplay/c;->e:Ls/a;

    .line 27
    .line 28
    sget-object v1, Lcom/syu/carlink/carplay/VideoFrame$recycles$2;->INSTANCE:Lcom/syu/carlink/carplay/VideoFrame$recycles$2;

    .line 29
    .line 30
    invoke-static {v1}, Lkotlin/a;->c(Lz/a;)Ls/a;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    iput-object v1, p0, Lcom/syu/carlink/carplay/c;->g:Ls/a;

    .line 35
    .line 36
    const/4 v1, 0x0

    .line 37
    iput-boolean v1, p0, Lcom/syu/carlink/carplay/c;->f:Z

    .line 38
    .line 39
    invoke-interface {v0}, Ls/a;->getValue()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    check-cast v0, Landroid/util/SparseArray;

    .line 44
    .line 45
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 46
    .line 47
    .line 48
    iput v1, p0, Lcom/syu/carlink/carplay/c;->j:I

    .line 49
    .line 50
    iput v1, p0, Lcom/syu/carlink/carplay/c;->d:I

    .line 51
    .line 52
    iput v1, p0, Lcom/syu/carlink/carplay/c;->h:I

    .line 53
    .line 54
    iput v1, p0, Lcom/syu/carlink/carplay/c;->i:I

    .line 55
    .line 56
    iput v1, p0, Lcom/syu/carlink/carplay/c;->c:I

    .line 57
    .line 58
    return-void

    .line 59
    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data
.end method


# virtual methods
.method public final a()[B
    .locals 1

    iget-object v0, p0, Lcom/syu/carlink/carplay/c;->g:Ls/a;

    invoke-interface {v0}, Ls/a;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method
