.class Landroid/media/Tokenizer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/Tokenizer$OnTokenListener;,
        Landroid/media/Tokenizer$TagTokenizer;,
        Landroid/media/Tokenizer$DataTokenizer;,
        Landroid/media/Tokenizer$TokenizerPhase;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Tokenizer"


# instance fields
.field private mDataTokenizer:Landroid/media/Tokenizer$TokenizerPhase;

.field private mHandledLen:I

.field private mLine:Ljava/lang/String;

.field private mListener:Landroid/media/Tokenizer$OnTokenListener;

.field private mPhase:Landroid/media/Tokenizer$TokenizerPhase;

.field private mTagTokenizer:Landroid/media/Tokenizer$TokenizerPhase;


# direct methods
.method public constructor <init>(Landroid/media/Tokenizer$OnTokenListener;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/media/Tokenizer$DataTokenizer;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Landroid/media/Tokenizer$DataTokenizer;-><init>(Landroid/media/Tokenizer;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroid/media/Tokenizer;->mDataTokenizer:Landroid/media/Tokenizer$TokenizerPhase;

    .line 10
    .line 11
    new-instance v0, Landroid/media/Tokenizer$TagTokenizer;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Landroid/media/Tokenizer$TagTokenizer;-><init>(Landroid/media/Tokenizer;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Landroid/media/Tokenizer;->mTagTokenizer:Landroid/media/Tokenizer$TokenizerPhase;

    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/media/Tokenizer;->reset()V

    .line 19
    .line 20
    .line 21
    iput-object p1, p0, Landroid/media/Tokenizer;->mListener:Landroid/media/Tokenizer$OnTokenListener;

    .line 22
    .line 23
    return-void
.end method

.method public static synthetic access$000(Landroid/media/Tokenizer;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/media/Tokenizer;->mLine:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$100(Landroid/media/Tokenizer;)I
    .locals 0

    iget p0, p0, Landroid/media/Tokenizer;->mHandledLen:I

    return p0
.end method

.method public static synthetic access$102(Landroid/media/Tokenizer;I)I
    .locals 0

    iput p1, p0, Landroid/media/Tokenizer;->mHandledLen:I

    return p1
.end method

.method public static synthetic access$108(Landroid/media/Tokenizer;)I
    .locals 2

    iget v0, p0, Landroid/media/Tokenizer;->mHandledLen:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/media/Tokenizer;->mHandledLen:I

    return v0
.end method

.method public static synthetic access$202(Landroid/media/Tokenizer;Landroid/media/Tokenizer$TokenizerPhase;)Landroid/media/Tokenizer$TokenizerPhase;
    .locals 0

    iput-object p1, p0, Landroid/media/Tokenizer;->mPhase:Landroid/media/Tokenizer$TokenizerPhase;

    return-object p1
.end method

.method public static synthetic access$300(Landroid/media/Tokenizer;)Landroid/media/Tokenizer$TokenizerPhase;
    .locals 0

    iget-object p0, p0, Landroid/media/Tokenizer;->mTagTokenizer:Landroid/media/Tokenizer$TokenizerPhase;

    return-object p0
.end method

.method public static synthetic access$400(Landroid/media/Tokenizer;)Landroid/media/Tokenizer$OnTokenListener;
    .locals 0

    iget-object p0, p0, Landroid/media/Tokenizer;->mListener:Landroid/media/Tokenizer$OnTokenListener;

    return-object p0
.end method

.method public static synthetic access$500(Landroid/media/Tokenizer;)Landroid/media/Tokenizer$TokenizerPhase;
    .locals 0

    iget-object p0, p0, Landroid/media/Tokenizer;->mDataTokenizer:Landroid/media/Tokenizer$TokenizerPhase;

    return-object p0
.end method


# virtual methods
.method public reset()V
    .locals 1

    iget-object v0, p0, Landroid/media/Tokenizer;->mDataTokenizer:Landroid/media/Tokenizer$TokenizerPhase;

    invoke-interface {v0}, Landroid/media/Tokenizer$TokenizerPhase;->start()Landroid/media/Tokenizer$TokenizerPhase;

    move-result-object v0

    iput-object v0, p0, Landroid/media/Tokenizer;->mPhase:Landroid/media/Tokenizer$TokenizerPhase;

    return-void
.end method

.method public tokenize(Ljava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroid/media/Tokenizer;->mHandledLen:I

    .line 3
    .line 4
    iput-object p1, p0, Landroid/media/Tokenizer;->mLine:Ljava/lang/String;

    .line 5
    .line 6
    :goto_0
    iget p1, p0, Landroid/media/Tokenizer;->mHandledLen:I

    .line 7
    .line 8
    iget-object v0, p0, Landroid/media/Tokenizer;->mLine:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-ge p1, v0, :cond_0

    .line 15
    .line 16
    iget-object p1, p0, Landroid/media/Tokenizer;->mPhase:Landroid/media/Tokenizer$TokenizerPhase;

    .line 17
    .line 18
    invoke-interface {p1}, Landroid/media/Tokenizer$TokenizerPhase;->tokenize()V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget-object p1, p0, Landroid/media/Tokenizer;->mPhase:Landroid/media/Tokenizer$TokenizerPhase;

    .line 23
    .line 24
    instance-of p1, p1, Landroid/media/Tokenizer$TagTokenizer;

    .line 25
    .line 26
    if-nez p1, :cond_1

    .line 27
    .line 28
    iget-object p1, p0, Landroid/media/Tokenizer;->mListener:Landroid/media/Tokenizer$OnTokenListener;

    .line 29
    .line 30
    invoke-interface {p1}, Landroid/media/Tokenizer$OnTokenListener;->onLineEnd()V

    .line 31
    .line 32
    .line 33
    :cond_1
    return-void
.end method
