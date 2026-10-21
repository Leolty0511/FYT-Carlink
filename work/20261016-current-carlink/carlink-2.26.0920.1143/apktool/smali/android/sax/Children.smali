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
.field children:[Landroid/sax/Children$Child;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x10

    .line 5
    .line 6
    new-array v0, v0, [Landroid/sax/Children$Child;

    .line 7
    .line 8
    iput-object v0, p0, Landroid/sax/Children;->children:[Landroid/sax/Children$Child;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    mul-int/lit8 v0, v0, 0x1f

    .line 6
    .line 7
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    add-int/2addr v1, v0

    .line 12
    and-int/lit8 v0, v1, 0xf

    .line 13
    .line 14
    iget-object v2, p0, Landroid/sax/Children;->children:[Landroid/sax/Children$Child;

    .line 15
    .line 16
    aget-object v0, v2, v0

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    return-object v2

    .line 22
    :cond_0
    iget v3, v0, Landroid/sax/Children$Child;->hash:I

    .line 23
    .line 24
    if-ne v3, v1, :cond_1

    .line 25
    .line 26
    iget-object v3, v0, Landroid/sax/Element;->uri:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {v3, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    if-nez v3, :cond_1

    .line 33
    .line 34
    iget-object v3, v0, Landroid/sax/Element;->localName:Ljava/lang/String;

    .line 35
    .line 36
    invoke-virtual {v3, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    if-nez v3, :cond_1

    .line 41
    .line 42
    return-object v0

    .line 43
    :cond_1
    iget-object v0, v0, Landroid/sax/Children$Child;->next:Landroid/sax/Children$Child;

    .line 44
    .line 45
    if-nez v0, :cond_0

    .line 46
    .line 47
    return-object v2
.end method

.method public getOrCreate(Landroid/sax/Element;Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;
    .locals 8

    .line 1
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    mul-int/lit8 v0, v0, 0x1f

    .line 6
    .line 7
    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    add-int v7, v1, v0

    .line 12
    .line 13
    and-int/lit8 v0, v7, 0xf

    .line 14
    .line 15
    iget-object v1, p0, Landroid/sax/Children;->children:[Landroid/sax/Children$Child;

    .line 16
    .line 17
    aget-object v1, v1, v0

    .line 18
    .line 19
    if-nez v1, :cond_0

    .line 20
    .line 21
    new-instance v1, Landroid/sax/Children$Child;

    .line 22
    .line 23
    iget v2, p1, Landroid/sax/Element;->depth:I

    .line 24
    .line 25
    add-int/lit8 v6, v2, 0x1

    .line 26
    .line 27
    move-object v2, v1

    .line 28
    move-object v3, p1

    .line 29
    move-object v4, p2

    .line 30
    move-object v5, p3

    .line 31
    invoke-direct/range {v2 .. v7}, Landroid/sax/Children$Child;-><init>(Landroid/sax/Element;Ljava/lang/String;Ljava/lang/String;II)V

    .line 32
    .line 33
    .line 34
    iget-object p1, p0, Landroid/sax/Children;->children:[Landroid/sax/Children$Child;

    .line 35
    .line 36
    aput-object v1, p1, v0

    .line 37
    .line 38
    return-object v1

    .line 39
    :cond_0
    :goto_0
    iget v0, v1, Landroid/sax/Children$Child;->hash:I

    .line 40
    .line 41
    if-ne v0, v7, :cond_1

    .line 42
    .line 43
    iget-object v0, v1, Landroid/sax/Element;->uri:Ljava/lang/String;

    .line 44
    .line 45
    invoke-virtual {v0, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-nez v0, :cond_1

    .line 50
    .line 51
    iget-object v0, v1, Landroid/sax/Element;->localName:Ljava/lang/String;

    .line 52
    .line 53
    invoke-virtual {v0, p3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-nez v0, :cond_1

    .line 58
    .line 59
    return-object v1

    .line 60
    :cond_1
    iget-object v0, v1, Landroid/sax/Children$Child;->next:Landroid/sax/Children$Child;

    .line 61
    .line 62
    if-nez v0, :cond_2

    .line 63
    .line 64
    new-instance v0, Landroid/sax/Children$Child;

    .line 65
    .line 66
    iget v2, p1, Landroid/sax/Element;->depth:I

    .line 67
    .line 68
    add-int/lit8 v6, v2, 0x1

    .line 69
    .line 70
    move-object v2, v0

    .line 71
    move-object v3, p1

    .line 72
    move-object v4, p2

    .line 73
    move-object v5, p3

    .line 74
    invoke-direct/range {v2 .. v7}, Landroid/sax/Children$Child;-><init>(Landroid/sax/Element;Ljava/lang/String;Ljava/lang/String;II)V

    .line 75
    .line 76
    .line 77
    iput-object v0, v1, Landroid/sax/Children$Child;->next:Landroid/sax/Children$Child;

    .line 78
    .line 79
    return-object v0

    .line 80
    :cond_2
    move-object v1, v0

    .line 81
    goto :goto_0
.end method
