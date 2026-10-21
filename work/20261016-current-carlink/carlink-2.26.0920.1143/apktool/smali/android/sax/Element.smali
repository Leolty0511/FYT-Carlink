.class public Landroid/sax/Element;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field children:Landroid/sax/Children;

.field final depth:I

.field endElementListener:Landroid/sax/EndElementListener;

.field endTextElementListener:Landroid/sax/EndTextElementListener;

.field final localName:Ljava/lang/String;

.field final parent:Landroid/sax/Element;

.field requiredChilden:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/sax/Element;",
            ">;"
        }
    .end annotation
.end field

.field startElementListener:Landroid/sax/StartElementListener;

.field final uri:Ljava/lang/String;

.field visited:Z


# direct methods
.method public constructor <init>(Landroid/sax/Element;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroid/sax/Element;->parent:Landroid/sax/Element;

    .line 5
    .line 6
    iput-object p2, p0, Landroid/sax/Element;->uri:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Landroid/sax/Element;->localName:Ljava/lang/String;

    .line 9
    .line 10
    iput p4, p0, Landroid/sax/Element;->depth:I

    .line 11
    .line 12
    return-void
.end method

.method public static toString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ""

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, ":"

    .line 3
    invoke-static {p0, v2, p1}, Landroid/app/m;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4
    :goto_0
    invoke-static {v0, p1, v1}, Landroid/accessibilityservice/c;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public checkRequiredChildren(Lorg/xml/sax/Locator;)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/sax/Element;->requiredChilden:Ljava/util/ArrayList;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    add-int/lit8 v1, v1, -0x1

    .line 10
    .line 11
    :goto_0
    if-ltz v1, :cond_1

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    check-cast v2, Landroid/sax/Element;

    .line 18
    .line 19
    iget-boolean v3, v2, Landroid/sax/Element;->visited:Z

    .line 20
    .line 21
    if-eqz v3, :cond_0

    .line 22
    .line 23
    add-int/lit8 v1, v1, -0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    new-instance v0, Landroid/sax/BadXmlException;

    .line 27
    .line 28
    new-instance v1, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    const-string v3, "Element named "

    .line 31
    .line 32
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string v3, " is missing required child element named "

    .line 39
    .line 40
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v2, "."

    .line 47
    .line 48
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-direct {v0, v1, p1}, Landroid/sax/BadXmlException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;)V

    .line 56
    .line 57
    .line 58
    throw v0

    .line 59
    :cond_1
    return-void
.end method

.method public getChild(Ljava/lang/String;)Landroid/sax/Element;
    .locals 1

    const-string v0, ""

    .line 1
    invoke-virtual {p0, v0, p1}, Landroid/sax/Element;->getChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object p1

    return-object p1
.end method

.method public getChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;
    .locals 1

    .line 2
    iget-object v0, p0, Landroid/sax/Element;->endTextElementListener:Landroid/sax/EndTextElementListener;

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Landroid/sax/Element;->children:Landroid/sax/Children;

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Landroid/sax/Children;

    invoke-direct {v0}, Landroid/sax/Children;-><init>()V

    iput-object v0, p0, Landroid/sax/Element;->children:Landroid/sax/Children;

    .line 5
    :cond_0
    iget-object v0, p0, Landroid/sax/Element;->children:Landroid/sax/Children;

    invoke-virtual {v0, p0, p1, p2}, Landroid/sax/Children;->getOrCreate(Landroid/sax/Element;Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object p1

    return-object p1

    .line 6
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "This element already has an end text element listener. It cannot have children."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public requireChild(Ljava/lang/String;)Landroid/sax/Element;
    .locals 1

    const-string v0, ""

    .line 1
    invoke-virtual {p0, v0, p1}, Landroid/sax/Element;->requireChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object p1

    return-object p1
.end method

.method public requireChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Landroid/sax/Element;->getChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object p1

    .line 3
    iget-object p2, p0, Landroid/sax/Element;->requiredChilden:Ljava/util/ArrayList;

    if-nez p2, :cond_0

    .line 4
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Landroid/sax/Element;->requiredChilden:Ljava/util/ArrayList;

    .line 5
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 7
    iget-object p2, p0, Landroid/sax/Element;->requiredChilden:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-object p1
.end method

.method public resetRequiredChildren()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/sax/Element;->requiredChilden:Ljava/util/ArrayList;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    add-int/lit8 v1, v1, -0x1

    .line 10
    .line 11
    :goto_0
    if-ltz v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    check-cast v2, Landroid/sax/Element;

    .line 18
    .line 19
    const/4 v3, 0x0

    .line 20
    iput-boolean v3, v2, Landroid/sax/Element;->visited:Z

    .line 21
    .line 22
    add-int/lit8 v1, v1, -0x1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    return-void
.end method

.method public setElementListener(Landroid/sax/ElementListener;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/sax/Element;->setStartElementListener(Landroid/sax/StartElementListener;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Landroid/sax/Element;->setEndElementListener(Landroid/sax/EndElementListener;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public setEndElementListener(Landroid/sax/EndElementListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/sax/Element;->endElementListener:Landroid/sax/EndElementListener;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iput-object p1, p0, Landroid/sax/Element;->endElementListener:Landroid/sax/EndElementListener;

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 9
    .line 10
    const-string v0, "End element listener has already been set."

    .line 11
    .line 12
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    throw p1
.end method

.method public setEndTextElementListener(Landroid/sax/EndTextElementListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/sax/Element;->endTextElementListener:Landroid/sax/EndTextElementListener;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Landroid/sax/Element;->children:Landroid/sax/Children;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iput-object p1, p0, Landroid/sax/Element;->endTextElementListener:Landroid/sax/EndTextElementListener;

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 13
    .line 14
    const-string v0, "This element already has children. It cannot have an end text element listener."

    .line 15
    .line 16
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw p1

    .line 20
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 21
    .line 22
    const-string v0, "End text element listener has already been set."

    .line 23
    .line 24
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw p1
.end method

.method public setStartElementListener(Landroid/sax/StartElementListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/sax/Element;->startElementListener:Landroid/sax/StartElementListener;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iput-object p1, p0, Landroid/sax/Element;->startElementListener:Landroid/sax/StartElementListener;

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 9
    .line 10
    const-string v0, "Start element listener has already been set."

    .line 11
    .line 12
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    throw p1
.end method

.method public setTextElementListener(Landroid/sax/TextElementListener;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/sax/Element;->setStartElementListener(Landroid/sax/StartElementListener;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/sax/Element;->uri:Ljava/lang/String;

    iget-object v1, p0, Landroid/sax/Element;->localName:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/sax/Element;->toString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
