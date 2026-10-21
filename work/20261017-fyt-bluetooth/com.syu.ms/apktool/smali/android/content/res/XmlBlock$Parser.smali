.class final Landroid/content/res/XmlBlock$Parser;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/res/XmlResourceParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/XmlBlock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Parser"
.end annotation


# instance fields
.field private final mBlock:Landroid/content/res/XmlBlock;

.field private mDecNextDepth:Z

.field private mDepth:I

.field private mEventType:I

.field public mParseState:I

.field private mStarted:Z

.field public final synthetic this$0:Landroid/content/res/XmlBlock;


# direct methods
.method public constructor <init>(Landroid/content/res/XmlBlock;ILandroid/content/res/XmlBlock;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/content/res/XmlBlock$Parser;->this$0:Landroid/content/res/XmlBlock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Landroid/content/res/XmlBlock$Parser;->mStarted:Z

    .line 3
    iput-boolean p1, p0, Landroid/content/res/XmlBlock$Parser;->mDecNextDepth:Z

    .line 4
    iput p1, p0, Landroid/content/res/XmlBlock$Parser;->mDepth:I

    .line 5
    iput p1, p0, Landroid/content/res/XmlBlock$Parser;->mEventType:I

    .line 6
    iput p2, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:I

    .line 7
    iput-object p3, p0, Landroid/content/res/XmlBlock$Parser;->mBlock:Landroid/content/res/XmlBlock;

    .line 8
    invoke-static {p3}, Landroid/content/res/XmlBlock;->access$008(Landroid/content/res/XmlBlock;)I

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/content/res/XmlBlock$Parser;->mBlock:Landroid/content/res/XmlBlock;

    monitor-enter v0

    .line 2
    :try_start_0
    iget v1, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:I

    if-eqz v1, :cond_0

    .line 3
    invoke-static {v1}, Landroid/content/res/XmlBlock;->access$1500(I)V

    const/4 v1, 0x0

    .line 4
    iput v1, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:I

    .line 5
    iget-object v1, p0, Landroid/content/res/XmlBlock$Parser;->mBlock:Landroid/content/res/XmlBlock;

    invoke-static {v1}, Landroid/content/res/XmlBlock;->access$1600(Landroid/content/res/XmlBlock;)V

    .line 6
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public defineEntityReplacementText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string p2, "defineEntityReplacementText() not supported"

    invoke-direct {p1, p2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public finalize()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->close()V

    return-void
.end method

.method public getAttributeBooleanValue(IZ)Z
    .locals 2

    .line 3
    iget v0, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:I

    invoke-static {v0, p1}, Landroid/content/res/XmlBlock;->access$800(II)I

    move-result v0

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    const/16 v1, 0x1f

    if-gt v0, v1, :cond_1

    .line 4
    iget p2, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:I

    invoke-static {p2, p1}, Landroid/content/res/XmlBlock;->access$900(II)I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1

    :cond_1
    return p2
.end method

.method public getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 1

    .line 1
    iget v0, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:I

    invoke-static {v0, p1, p2}, Landroid/content/res/XmlBlock;->access$1000(ILjava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-ltz p1, :cond_0

    .line 2
    invoke-virtual {p0, p1, p3}, Landroid/content/res/XmlBlock$Parser;->getAttributeBooleanValue(IZ)Z

    move-result p1

    return p1

    :cond_0
    return p3
.end method

.method public getAttributeCount()I
    .locals 2

    .line 1
    iget v0, p0, Landroid/content/res/XmlBlock$Parser;->mEventType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:I

    invoke-static {v0}, Landroid/content/res/XmlBlock;->access$600(I)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public getAttributeFloatValue(IF)F
    .locals 1

    .line 3
    iget p2, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:I

    invoke-static {p2, p1}, Landroid/content/res/XmlBlock;->access$800(II)I

    move-result p2

    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 4
    iget p2, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:I

    invoke-static {p2, p1}, Landroid/content/res/XmlBlock;->access$900(II)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    return p1

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "not a float!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getAttributeFloatValue(Ljava/lang/String;Ljava/lang/String;F)F
    .locals 1

    .line 1
    iget v0, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:I

    invoke-static {v0, p1, p2}, Landroid/content/res/XmlBlock;->access$1000(ILjava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-ltz p1, :cond_0

    .line 2
    invoke-virtual {p0, p1, p3}, Landroid/content/res/XmlBlock$Parser;->getAttributeFloatValue(IF)F

    move-result p1

    return p1

    :cond_0
    return p3
.end method

.method public getAttributeIntValue(II)I
    .locals 2

    .line 3
    iget v0, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:I

    invoke-static {v0, p1}, Landroid/content/res/XmlBlock;->access$800(II)I

    move-result v0

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    const/16 v1, 0x1f

    if-gt v0, v1, :cond_0

    .line 4
    iget p2, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:I

    invoke-static {p2, p1}, Landroid/content/res/XmlBlock;->access$900(II)I

    move-result p1

    return p1

    :cond_0
    return p2
.end method

.method public getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 1

    .line 1
    iget v0, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:I

    invoke-static {v0, p1, p2}, Landroid/content/res/XmlBlock;->access$1000(ILjava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-ltz p1, :cond_0

    .line 2
    invoke-virtual {p0, p1, p3}, Landroid/content/res/XmlBlock$Parser;->getAttributeIntValue(II)I

    move-result p1

    return p1

    :cond_0
    return p3
.end method

.method public getAttributeListValue(I[Ljava/lang/String;I)I
    .locals 2

    .line 3
    iget v0, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:I

    invoke-static {v0, p1}, Landroid/content/res/XmlBlock;->access$800(II)I

    move-result v0

    .line 4
    iget v1, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:I

    invoke-static {v1, p1}, Landroid/content/res/XmlBlock;->access$900(II)I

    move-result p1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 5
    iget-object v0, p0, Landroid/content/res/XmlBlock$Parser;->this$0:Landroid/content/res/XmlBlock;

    iget-object v0, v0, Landroid/content/res/XmlBlock;->mStrings:Landroid/content/res/StringBlock;

    invoke-virtual {v0, p1}, Landroid/content/res/StringBlock;->get(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1, p2, p3}, Lu/n;->d(Ljava/lang/CharSequence;[Ljava/lang/String;I)I

    move-result p1

    :cond_0
    return p1
.end method

.method public getAttributeListValue(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;I)I
    .locals 1

    .line 1
    iget v0, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:I

    invoke-static {v0, p1, p2}, Landroid/content/res/XmlBlock;->access$1000(ILjava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-ltz p1, :cond_0

    .line 2
    invoke-virtual {p0, p1, p3, p4}, Landroid/content/res/XmlBlock$Parser;->getAttributeListValue(I[Ljava/lang/String;I)I

    move-result p1

    return p1

    :cond_0
    return p4
.end method

.method public getAttributeName(I)Ljava/lang/String;
    .locals 1

    .line 1
    iget v0, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:I

    invoke-static {v0, p1}, Landroid/content/res/XmlBlock;->access$500(II)I

    move-result v0

    if-ltz v0, :cond_0

    .line 2
    iget-object p1, p0, Landroid/content/res/XmlBlock$Parser;->this$0:Landroid/content/res/XmlBlock;

    iget-object p1, p1, Landroid/content/res/XmlBlock;->mStrings:Landroid/content/res/StringBlock;

    invoke-virtual {p1, v0}, Landroid/content/res/StringBlock;->get(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAttributeNameResource(I)I
    .locals 1

    .line 1
    iget v0, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:I

    invoke-static {v0, p1}, Landroid/content/res/XmlBlock;->access$1100(II)I

    move-result p1

    return p1
.end method

.method public getAttributeNamespace(I)Ljava/lang/String;
    .locals 2

    .line 1
    iget v0, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:I

    invoke-static {v0, p1}, Landroid/content/res/XmlBlock;->access$400(II)I

    move-result v0

    if-ltz v0, :cond_0

    .line 2
    iget-object p1, p0, Landroid/content/res/XmlBlock$Parser;->this$0:Landroid/content/res/XmlBlock;

    iget-object p1, p1, Landroid/content/res/XmlBlock;->mStrings:Landroid/content/res/StringBlock;

    invoke-virtual {p1, v0}, Landroid/content/res/StringBlock;->get(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const-string p1, ""

    return-object p1

    .line 3
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAttributePrefix(I)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "getAttributePrefix not supported"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getAttributeResourceValue(II)I
    .locals 2

    .line 3
    iget v0, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:I

    invoke-static {v0, p1}, Landroid/content/res/XmlBlock;->access$800(II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 4
    iget p2, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:I

    invoke-static {p2, p1}, Landroid/content/res/XmlBlock;->access$900(II)I

    move-result p1

    return p1

    :cond_0
    return p2
.end method

.method public getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 1

    .line 1
    iget v0, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:I

    invoke-static {v0, p1, p2}, Landroid/content/res/XmlBlock;->access$1000(ILjava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-ltz p1, :cond_0

    .line 2
    invoke-virtual {p0, p1, p3}, Landroid/content/res/XmlBlock$Parser;->getAttributeResourceValue(II)I

    move-result p1

    return p1

    :cond_0
    return p3
.end method

.method public getAttributeType(I)Ljava/lang/String;
    .locals 0

    const-string p1, "CDATA"

    return-object p1
.end method

.method public getAttributeUnsignedIntValue(II)I
    .locals 2

    .line 3
    iget v0, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:I

    invoke-static {v0, p1}, Landroid/content/res/XmlBlock;->access$800(II)I

    move-result v0

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    const/16 v1, 0x1f

    if-gt v0, v1, :cond_0

    .line 4
    iget p2, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:I

    invoke-static {p2, p1}, Landroid/content/res/XmlBlock;->access$900(II)I

    move-result p1

    return p1

    :cond_0
    return p2
.end method

.method public getAttributeUnsignedIntValue(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 1

    .line 1
    iget v0, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:I

    invoke-static {v0, p1, p2}, Landroid/content/res/XmlBlock;->access$1000(ILjava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-ltz p1, :cond_0

    .line 2
    invoke-virtual {p0, p1, p3}, Landroid/content/res/XmlBlock$Parser;->getAttributeUnsignedIntValue(II)I

    move-result p1

    return p1

    :cond_0
    return p3
.end method

.method public getAttributeValue(I)Ljava/lang/String;
    .locals 2

    .line 1
    iget v0, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:I

    invoke-static {v0, p1}, Landroid/content/res/XmlBlock;->access$700(II)I

    move-result v0

    if-ltz v0, :cond_0

    .line 2
    iget-object p1, p0, Landroid/content/res/XmlBlock$Parser;->this$0:Landroid/content/res/XmlBlock;

    iget-object p1, p1, Landroid/content/res/XmlBlock;->mStrings:Landroid/content/res/StringBlock;

    invoke-virtual {p1, v0}, Landroid/content/res/StringBlock;->get(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    iget v0, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:I

    invoke-static {v0, p1}, Landroid/content/res/XmlBlock;->access$800(II)I

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget v1, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:I

    invoke-static {v1, p1}, Landroid/content/res/XmlBlock;->access$900(II)I

    move-result p1

    .line 5
    invoke-static {v0, p1}, Landroid/util/TypedValue;->coerceToString(II)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 6
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 7
    iget v0, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:I

    invoke-static {v0, p1, p2}, Landroid/content/res/XmlBlock;->access$1000(ILjava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-ltz p1, :cond_0

    .line 8
    invoke-virtual {p0, p1}, Landroid/content/res/XmlBlock$Parser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getClassAttribute()Ljava/lang/String;
    .locals 2

    .line 1
    iget v0, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:I

    invoke-static {v0}, Landroid/content/res/XmlBlock;->access$1300(I)I

    move-result v0

    if-ltz v0, :cond_0

    .line 2
    iget-object v1, p0, Landroid/content/res/XmlBlock$Parser;->this$0:Landroid/content/res/XmlBlock;

    iget-object v1, v1, Landroid/content/res/XmlBlock;->mStrings:Landroid/content/res/StringBlock;

    invoke-virtual {v1, v0}, Landroid/content/res/StringBlock;->get(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getColumnNumber()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getDepth()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/content/res/XmlBlock$Parser;->mDepth:I

    return v0
.end method

.method public getEventType()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/content/res/XmlBlock$Parser;->mEventType:I

    return v0
.end method

.method public getFeature(Ljava/lang/String;)Z
    .locals 2

    const-string v0, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    .line 1
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "http://xmlpull.org/v1/doc/features.html#report-namespace-prefixes"

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public getIdAttribute()Ljava/lang/String;
    .locals 2

    .line 1
    iget v0, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:I

    invoke-static {v0}, Landroid/content/res/XmlBlock;->access$1200(I)I

    move-result v0

    if-ltz v0, :cond_0

    .line 2
    iget-object v1, p0, Landroid/content/res/XmlBlock$Parser;->this$0:Landroid/content/res/XmlBlock;

    iget-object v1, v1, Landroid/content/res/XmlBlock;->mStrings:Landroid/content/res/StringBlock;

    invoke-virtual {v1, v0}, Landroid/content/res/StringBlock;->get(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getIdAttributeResourceValue(I)I
    .locals 2

    const/4 v0, 0x0

    const-string v1, "id"

    .line 1
    invoke-virtual {p0, v0, v1, p1}, Landroid/content/res/XmlBlock$Parser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public getInputEncoding()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getLineNumber()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:I

    invoke-static {v0}, Landroid/content/res/XmlBlock;->access$200(I)I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .line 1
    iget v0, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:I

    invoke-static {v0}, Landroid/content/res/XmlBlock;->nativeGetName(I)I

    move-result v0

    if-ltz v0, :cond_0

    .line 2
    iget-object v1, p0, Landroid/content/res/XmlBlock$Parser;->this$0:Landroid/content/res/XmlBlock;

    iget-object v1, v1, Landroid/content/res/XmlBlock;->mStrings:Landroid/content/res/StringBlock;

    invoke-virtual {v1, v0}, Landroid/content/res/StringBlock;->get(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 2

    .line 2
    iget v0, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:I

    invoke-static {v0}, Landroid/content/res/XmlBlock;->access$300(I)I

    move-result v0

    if-ltz v0, :cond_0

    .line 3
    iget-object v1, p0, Landroid/content/res/XmlBlock$Parser;->this$0:Landroid/content/res/XmlBlock;

    iget-object v1, v1, Landroid/content/res/XmlBlock;->mStrings:Landroid/content/res/StringBlock;

    invoke-virtual {v1, v0}, Landroid/content/res/StringBlock;->get(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public getNamespace(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "getNamespace() not supported"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getNamespaceCount(I)I
    .locals 1

    .line 1
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v0, "getNamespaceCount() not supported"

    invoke-direct {p1, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getNamespacePrefix(I)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v0, "getNamespacePrefix() not supported"

    invoke-direct {p1, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getNamespaceUri(I)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v0, "getNamespaceUri() not supported"

    invoke-direct {p1, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getPooledString(I)Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/content/res/XmlBlock$Parser;->this$0:Landroid/content/res/XmlBlock;

    iget-object v0, v0, Landroid/content/res/XmlBlock;->mStrings:Landroid/content/res/StringBlock;

    invoke-virtual {v0, p1}, Landroid/content/res/StringBlock;->get(I)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public getPositionDescription()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Binary XML file line #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->getLineNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "getPrefix not supported"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getStyleAttribute()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:I

    invoke-static {v0}, Landroid/content/res/XmlBlock;->access$1400(I)I

    move-result v0

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 2

    .line 1
    iget v0, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:I

    invoke-static {v0}, Landroid/content/res/XmlBlock;->access$100(I)I

    move-result v0

    if-ltz v0, :cond_0

    .line 2
    iget-object v1, p0, Landroid/content/res/XmlBlock$Parser;->this$0:Landroid/content/res/XmlBlock;

    iget-object v1, v1, Landroid/content/res/XmlBlock;->mStrings:Landroid/content/res/StringBlock;

    invoke-virtual {v1, v0}, Landroid/content/res/StringBlock;->get(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getTextCharacters([I)[C
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->getText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    aput v1, p1, v1

    const/4 v2, 0x1

    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    aput v3, p1, v2

    .line 4
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p1

    new-array p1, p1, [C

    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2, p1, v1}, Ljava/lang/String;->getChars(II[CI)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public isAttributeDefault(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isEmptyElementTag()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isWhitespace()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public next()I
    .locals 4

    .line 1
    iget-boolean v0, p0, Landroid/content/res/XmlBlock$Parser;->mStarted:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 2
    iput-boolean v2, p0, Landroid/content/res/XmlBlock$Parser;->mStarted:Z

    return v1

    .line 3
    :cond_0
    iget v0, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:I

    if-nez v0, :cond_1

    return v2

    .line 4
    :cond_1
    invoke-static {v0}, Landroid/content/res/XmlBlock;->nativeNext(I)I

    move-result v0

    .line 5
    iget-boolean v3, p0, Landroid/content/res/XmlBlock$Parser;->mDecNextDepth:Z

    if-eqz v3, :cond_2

    .line 6
    iget v3, p0, Landroid/content/res/XmlBlock$Parser;->mDepth:I

    sub-int/2addr v3, v2

    iput v3, p0, Landroid/content/res/XmlBlock$Parser;->mDepth:I

    .line 7
    iput-boolean v1, p0, Landroid/content/res/XmlBlock$Parser;->mDecNextDepth:Z

    :cond_2
    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    goto :goto_0

    .line 8
    :cond_3
    iput-boolean v2, p0, Landroid/content/res/XmlBlock$Parser;->mDecNextDepth:Z

    goto :goto_0

    .line 9
    :cond_4
    iget v1, p0, Landroid/content/res/XmlBlock$Parser;->mDepth:I

    add-int/2addr v1, v2

    iput v1, p0, Landroid/content/res/XmlBlock$Parser;->mDepth:I

    .line 10
    :goto_0
    iput v0, p0, Landroid/content/res/XmlBlock$Parser;->mEventType:I

    if-ne v0, v2, :cond_5

    .line 11
    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->close()V

    :cond_5
    return v0
.end method

.method public nextTag()I
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->next()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->isWhitespace()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->next()I

    move-result v0

    :cond_0
    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": expected start or end tag"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0

    :cond_2
    :goto_0
    return v0
.end method

.method public nextText()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->getEventType()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    .line 2
    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->next()I

    move-result v0

    const/4 v2, 0x4

    const/4 v3, 0x3

    if-ne v0, v2, :cond_1

    .line 3
    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->getText()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->next()I

    move-result v2

    if-ne v2, v3, :cond_0

    return-object v0

    .line 5
    :cond_0
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": event TEXT it must be immediately followed by END_TAG"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, p0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0

    :cond_1
    if-ne v0, v3, :cond_2

    const-string v0, ""

    return-object v0

    .line 6
    :cond_2
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": parser must be on START_TAG or TEXT to read text"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, p0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0

    .line 7
    :cond_3
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": parser must be on START_TAG to read next text"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, p0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public nextToken()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->next()I

    move-result v0

    return v0
.end method

.method public require(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->getEventType()I

    move-result v0

    if-ne p1, v0, :cond_2

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->getNamespace()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    :cond_1
    return-void

    .line 2
    :cond_2
    new-instance p2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "expected "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lorg/xmlpull/v1/XmlPullParser;->TYPES:[Ljava/lang/String;

    aget-object p1, v0, p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->getPositionDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 2

    const-string v0, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    .line 1
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    return-void

    :cond_0
    const-string v0, "http://xmlpull.org/v1/doc/features.html#report-namespace-prefixes"

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    return-void

    .line 3
    :cond_1
    new-instance p2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported feature: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 0

    .line 2
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string/jumbo p2, "setInput() not supported"

    invoke-direct {p1, p2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setInput(Ljava/io/Reader;)V
    .locals 1

    .line 1
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string/jumbo v0, "setInput() not supported"

    invoke-direct {p1, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 1
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string/jumbo p2, "setProperty() not supported"

    invoke-direct {p1, p2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
