.class public Landroid/speech/srec/Recognizer$Grammar;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/speech/srec/Recognizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Grammar"
.end annotation


# instance fields
.field private mGrammar:I

.field public final synthetic this$0:Landroid/speech/srec/Recognizer;


# direct methods
.method public constructor <init>(Landroid/speech/srec/Recognizer;Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Landroid/speech/srec/Recognizer$Grammar;->this$0:Landroid/speech/srec/Recognizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroid/speech/srec/Recognizer$Grammar;->mGrammar:I

    .line 3
    invoke-static {p2}, Landroid/speech/srec/Recognizer;->access$000(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Landroid/speech/srec/Recognizer$Grammar;->mGrammar:I

    .line 4
    invoke-static {p1}, Landroid/speech/srec/Recognizer;->access$100(Landroid/speech/srec/Recognizer;)I

    move-result p1

    invoke-static {p2, p1}, Landroid/speech/srec/Recognizer;->access$200(II)V

    return-void
.end method

.method public static synthetic access$1100(Landroid/speech/srec/Recognizer$Grammar;)I
    .locals 0

    .line 1
    iget p0, p0, Landroid/speech/srec/Recognizer$Grammar;->mGrammar:I

    return p0
.end method


# virtual methods
.method public addWordToSlot(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 6

    .line 1
    iget v0, p0, Landroid/speech/srec/Recognizer$Grammar;->mGrammar:I

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Landroid/speech/srec/Recognizer;->access$400(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public compile()V
    .locals 1

    .line 1
    iget v0, p0, Landroid/speech/srec/Recognizer$Grammar;->mGrammar:I

    invoke-static {v0}, Landroid/speech/srec/Recognizer;->access$500(I)V

    return-void
.end method

.method public destroy()V
    .locals 1

    .line 1
    iget v0, p0, Landroid/speech/srec/Recognizer$Grammar;->mGrammar:I

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0}, Landroid/speech/srec/Recognizer;->access$1000(I)V

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Landroid/speech/srec/Recognizer$Grammar;->mGrammar:I

    :cond_0
    return-void
.end method

.method public finalize()V
    .locals 2

    .line 1
    iget v0, p0, Landroid/speech/srec/Recognizer$Grammar;->mGrammar:I

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/speech/srec/Recognizer$Grammar;->destroy()V

    .line 3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "someone forgot to destroy Grammar"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public resetAllSlots()V
    .locals 1

    .line 1
    iget v0, p0, Landroid/speech/srec/Recognizer$Grammar;->mGrammar:I

    invoke-static {v0}, Landroid/speech/srec/Recognizer;->access$300(I)V

    return-void
.end method

.method public save(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget v0, p0, Landroid/speech/srec/Recognizer$Grammar;->mGrammar:I

    invoke-static {v0, p1}, Landroid/speech/srec/Recognizer;->access$900(ILjava/lang/String;)V

    return-void
.end method

.method public setupRecognizer()V
    .locals 2

    .line 1
    iget v0, p0, Landroid/speech/srec/Recognizer$Grammar;->mGrammar:I

    iget-object v1, p0, Landroid/speech/srec/Recognizer$Grammar;->this$0:Landroid/speech/srec/Recognizer;

    invoke-static {v1}, Landroid/speech/srec/Recognizer;->access$600(Landroid/speech/srec/Recognizer;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/speech/srec/Recognizer;->access$700(II)V

    .line 2
    iget-object v0, p0, Landroid/speech/srec/Recognizer$Grammar;->this$0:Landroid/speech/srec/Recognizer;

    invoke-static {v0, p0}, Landroid/speech/srec/Recognizer;->access$802(Landroid/speech/srec/Recognizer;Landroid/speech/srec/Recognizer$Grammar;)Landroid/speech/srec/Recognizer$Grammar;

    return-void
.end method
