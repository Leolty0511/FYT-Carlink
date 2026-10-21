.class Landroid/sax/Children;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/sax/Children$Child;
    }
.end annotation


# instance fields
.field public children:[Landroid/sax/Children$Child;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [Landroid/sax/Children$Child;

    .line 2
    iput-object v0, p0, Landroid/sax/Children;->children:[Landroid/sax/Children$Child;

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    and-int/lit8 v1, v0, 0xf

    .line 2
    iget-object v2, p0, Landroid/sax/Children;->children:[Landroid/sax/Children$Child;

    aget-object v1, v2, v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    .line 3
    :cond_0
    iget v3, v1, Landroid/sax/Children$Child;->hash:I

    if-ne v3, v0, :cond_1

    iget-object v3, v1, Landroid/sax/Element;->uri:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, v1, Landroid/sax/Element;->localName:Ljava/lang/String;

    invoke-virtual {v3, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1

    return-object v1

    .line 4
    :cond_1
    iget-object v1, v1, Landroid/sax/Children$Child;->next:Landroid/sax/Children$Child;

    if-nez v1, :cond_0

    return-object v2
.end method

.method public getOrCreate(Landroid/sax/Element;Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;
    .locals 8

    .line 1
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int v7, v0, v1

    and-int/lit8 v0, v7, 0xf

    .line 2
    iget-object v1, p0, Landroid/sax/Children;->children:[Landroid/sax/Children$Child;

    aget-object v1, v1, v0

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Landroid/sax/Children$Child;

    iget v2, p1, Landroid/sax/Element;->depth:I

    add-int/lit8 v6, v2, 0x1

    move-object v2, v1

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v2 .. v7}, Landroid/sax/Children$Child;-><init>(Landroid/sax/Element;Ljava/lang/String;Ljava/lang/String;II)V

    .line 4
    iget-object p1, p0, Landroid/sax/Children;->children:[Landroid/sax/Children$Child;

    aput-object v1, p1, v0

    return-object v1

    .line 5
    :cond_0
    :goto_0
    iget v0, v1, Landroid/sax/Children$Child;->hash:I

    if-ne v0, v7, :cond_1

    iget-object v0, v1, Landroid/sax/Element;->uri:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, v1, Landroid/sax/Element;->localName:Ljava/lang/String;

    invoke-virtual {v0, p3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    return-object v1

    .line 6
    :cond_1
    iget-object v0, v1, Landroid/sax/Children$Child;->next:Landroid/sax/Children$Child;

    if-nez v0, :cond_2

    .line 7
    new-instance v0, Landroid/sax/Children$Child;

    iget v2, p1, Landroid/sax/Element;->depth:I

    add-int/lit8 v6, v2, 0x1

    move-object v2, v0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v2 .. v7}, Landroid/sax/Children$Child;-><init>(Landroid/sax/Element;Ljava/lang/String;Ljava/lang/String;II)V

    .line 8
    iput-object v0, v1, Landroid/sax/Children$Child;->next:Landroid/sax/Children$Child;

    return-object v0

    :cond_2
    move-object v1, v0

    goto :goto_0
.end method
