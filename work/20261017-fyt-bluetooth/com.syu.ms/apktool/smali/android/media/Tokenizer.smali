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
    new-instance v0, Landroid/media/Tokenizer$DataTokenizer;

    invoke-direct {v0, p0}, Landroid/media/Tokenizer$DataTokenizer;-><init>(Landroid/media/Tokenizer;)V

    iput-object v0, p0, Landroid/media/Tokenizer;->mDataTokenizer:Landroid/media/Tokenizer$TokenizerPhase;

    .line 3
    new-instance v0, Landroid/media/Tokenizer$TagTokenizer;

    invoke-direct {v0, p0}, Landroid/media/Tokenizer$TagTokenizer;-><init>(Landroid/media/Tokenizer;)V

    iput-object v0, p0, Landroid/media/Tokenizer;->mTagTokenizer:Landroid/media/Tokenizer$TokenizerPhase;

    .line 4
    invoke-virtual {p0}, Landroid/media/Tokenizer;->reset()V

    .line 5
    iput-object p1, p0, Landroid/media/Tokenizer;->mListener:Landroid/media/Tokenizer$OnTokenListener;

    return-void
.end method

.method public static synthetic access$000(Landroid/media/Tokenizer;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/media/Tokenizer;->mLine:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$100(Landroid/media/Tokenizer;)I
    .locals 0

    .line 1
    iget p0, p0, Landroid/media/Tokenizer;->mHandledLen:I

    return p0
.end method

.method public static synthetic access$102(Landroid/media/Tokenizer;I)I
    .locals 0

    .line 1
    iput p1, p0, Landroid/media/Tokenizer;->mHandledLen:I

    return p1
.end method

.method public static synthetic access$108(Landroid/media/Tokenizer;)I
    .locals 2

    .line 1
    iget v0, p0, Landroid/media/Tokenizer;->mHandledLen:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/media/Tokenizer;->mHandledLen:I

    return v0
.end method

.method public static synthetic access$112(Landroid/media/Tokenizer;I)I
    .locals 1

    .line 1
    iget v0, p0, Landroid/media/Tokenizer;->mHandledLen:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/media/Tokenizer;->mHandledLen:I

    return v0
.end method

.method public static synthetic access$202(Landroid/media/Tokenizer;Landroid/media/Tokenizer$TokenizerPhase;)Landroid/media/Tokenizer$TokenizerPhase;
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/media/Tokenizer;->mPhase:Landroid/media/Tokenizer$TokenizerPhase;

    return-object p1
.end method

.method public static synthetic access$300(Landroid/media/Tokenizer;)Landroid/media/Tokenizer$TokenizerPhase;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/media/Tokenizer;->mTagTokenizer:Landroid/media/Tokenizer$TokenizerPhase;

    return-object p0
.end method

.method public static synthetic access$400(Landroid/media/Tokenizer;)Landroid/media/Tokenizer$OnTokenListener;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/media/Tokenizer;->mListener:Landroid/media/Tokenizer$OnTokenListener;

    return-object p0
.end method

.method public static synthetic access$500(Landroid/media/Tokenizer;)Landroid/media/Tokenizer$TokenizerPhase;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/media/Tokenizer;->mDataTokenizer:Landroid/media/Tokenizer$TokenizerPhase;

    return-object p0
.end method


# virtual methods
.method public reset()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/media/Tokenizer;->mDataTokenizer:Landroid/media/Tokenizer$TokenizerPhase;

    invoke-interface {v0}, Landroid/media/Tokenizer$TokenizerPhase;->start()Landroid/media/Tokenizer$TokenizerPhase;

    move-result-object v0

    iput-object v0, p0, Landroid/media/Tokenizer;->mPhase:Landroid/media/Tokenizer$TokenizerPhase;

    return-void
.end method

.method public tokenize(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Landroid/media/Tokenizer;->mHandledLen:I

    .line 2
    iput-object p1, p0, Landroid/media/Tokenizer;->mLine:Ljava/lang/String;

    .line 3
    :goto_0
    iget p1, p0, Landroid/media/Tokenizer;->mHandledLen:I

    iget-object v0, p0, Landroid/media/Tokenizer;->mLine:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 4
    iget-object p1, p0, Landroid/media/Tokenizer;->mPhase:Landroid/media/Tokenizer$TokenizerPhase;

    invoke-interface {p1}, Landroid/media/Tokenizer$TokenizerPhase;->tokenize()V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Landroid/media/Tokenizer;->mPhase:Landroid/media/Tokenizer$TokenizerPhase;

    instance-of p1, p1, Landroid/media/Tokenizer$TagTokenizer;

    if-nez p1, :cond_1

    .line 6
    iget-object p1, p0, Landroid/media/Tokenizer;->mListener:Landroid/media/Tokenizer$OnTokenListener;

    invoke-interface {p1}, Landroid/media/Tokenizer$OnTokenListener;->onLineEnd()V

    :cond_1
    return-void
.end method
