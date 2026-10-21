.class Landroid/util/XmlPullAttributes;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/util/AttributeSet;


# instance fields
.field public mParser:Lorg/xmlpull/v1/XmlPullParser;


# direct methods
.method public constructor <init>(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroid/util/XmlPullAttributes;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    return-void
.end method


# virtual methods
.method public getAttributeBooleanValue(IZ)Z
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Landroid/util/XmlPullAttributes;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Lu/n;->b(Ljava/lang/CharSequence;Z)Z

    move-result p1

    return p1
.end method

.method public getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Landroid/util/XmlPullAttributes;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p3}, Lu/n;->b(Ljava/lang/CharSequence;Z)Z

    move-result p1

    return p1
.end method

.method public getAttributeCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/util/XmlPullAttributes;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v0

    return v0
.end method

.method public getAttributeFloatValue(IF)F
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Landroid/util/XmlPullAttributes;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    return p1

    :cond_0
    return p2
.end method

.method public getAttributeFloatValue(Ljava/lang/String;Ljava/lang/String;F)F
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Landroid/util/XmlPullAttributes;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    return p1

    :cond_0
    return p3
.end method

.method public getAttributeIntValue(II)I
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Landroid/util/XmlPullAttributes;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Lu/n;->c(Ljava/lang/CharSequence;I)I

    move-result p1

    return p1
.end method

.method public getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Landroid/util/XmlPullAttributes;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p3}, Lu/n;->c(Ljava/lang/CharSequence;I)I

    move-result p1

    return p1
.end method

.method public getAttributeListValue(I[Ljava/lang/String;I)I
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Landroid/util/XmlPullAttributes;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2, p3}, Lu/n;->d(Ljava/lang/CharSequence;[Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public getAttributeListValue(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;I)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Landroid/util/XmlPullAttributes;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p3, p4}, Lu/n;->d(Ljava/lang/CharSequence;[Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public getAttributeName(I)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/util/XmlPullAttributes;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getAttributeNameResource(I)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getAttributeResourceValue(II)I
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Landroid/util/XmlPullAttributes;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Lu/n;->c(Ljava/lang/CharSequence;I)I

    move-result p1

    return p1
.end method

.method public getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Landroid/util/XmlPullAttributes;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p3}, Lu/n;->c(Ljava/lang/CharSequence;I)I

    move-result p1

    return p1
.end method

.method public getAttributeUnsignedIntValue(II)I
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Landroid/util/XmlPullAttributes;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Lu/n;->e(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public getAttributeUnsignedIntValue(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Landroid/util/XmlPullAttributes;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p3}, Lu/n;->e(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public getAttributeValue(I)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/util/XmlPullAttributes;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Landroid/util/XmlPullAttributes;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0, p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getClassAttribute()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    const-string v1, "class"

    .line 1
    invoke-virtual {p0, v0, v1}, Landroid/util/XmlPullAttributes;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIdAttribute()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    const-string v1, "id"

    .line 1
    invoke-virtual {p0, v0, v1}, Landroid/util/XmlPullAttributes;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIdAttributeResourceValue(I)I
    .locals 2

    const/4 v0, 0x0

    const-string v1, "id"

    .line 1
    invoke-virtual {p0, v0, v1, p1}, Landroid/util/XmlPullAttributes;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public getPositionDescription()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/util/XmlPullAttributes;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStyleAttribute()I
    .locals 3

    const/4 v0, 0x0

    const-string/jumbo v1, "style"

    const/4 v2, 0x0

    .line 1
    invoke-virtual {p0, v0, v1, v2}, Landroid/util/XmlPullAttributes;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method
