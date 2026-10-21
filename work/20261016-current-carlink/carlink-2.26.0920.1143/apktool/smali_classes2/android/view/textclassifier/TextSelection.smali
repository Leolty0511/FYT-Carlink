.class public final Landroid/view/textclassifier/TextSelection;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/textclassifier/TextSelection$Builder;
    }
.end annotation


# instance fields
.field private final mEndIndex:I

.field private final mEntities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mEntityConfidence:Landroid/view/textclassifier/EntityConfidence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/view/textclassifier/EntityConfidence<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mLogSource:Ljava/lang/String;

.field private final mStartIndex:I

.field private final mVersionInfo:Ljava/lang/String;


# direct methods
.method private constructor <init>(IILandroid/view/textclassifier/EntityConfidence;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Landroid/view/textclassifier/EntityConfidence<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Landroid/view/textclassifier/TextSelection;->mStartIndex:I

    .line 4
    iput p2, p0, Landroid/view/textclassifier/TextSelection;->mEndIndex:I

    .line 5
    new-instance p1, Landroid/view/textclassifier/EntityConfidence;

    invoke-direct {p1, p3}, Landroid/view/textclassifier/EntityConfidence;-><init>(Landroid/view/textclassifier/EntityConfidence;)V

    iput-object p1, p0, Landroid/view/textclassifier/TextSelection;->mEntityConfidence:Landroid/view/textclassifier/EntityConfidence;

    .line 6
    invoke-virtual {p1}, Landroid/view/textclassifier/EntityConfidence;->getEntities()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Landroid/view/textclassifier/TextSelection;->mEntities:Ljava/util/List;

    .line 7
    iput-object p4, p0, Landroid/view/textclassifier/TextSelection;->mLogSource:Ljava/lang/String;

    .line 8
    iput-object p5, p0, Landroid/view/textclassifier/TextSelection;->mVersionInfo:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(IILandroid/view/textclassifier/EntityConfidence;Ljava/lang/String;Ljava/lang/String;Landroid/view/textclassifier/TextSelection$1;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Landroid/view/textclassifier/TextSelection;-><init>(IILandroid/view/textclassifier/EntityConfidence;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getConfidenceScore(Ljava/lang/String;)F
    .locals 1

    iget-object v0, p0, Landroid/view/textclassifier/TextSelection;->mEntityConfidence:Landroid/view/textclassifier/EntityConfidence;

    invoke-virtual {v0, p1}, Landroid/view/textclassifier/EntityConfidence;->getConfidenceScore(Ljava/lang/Object;)F

    move-result p1

    return p1
.end method

.method public getEntity(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/view/textclassifier/TextSelection;->mEntities:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getEntityCount()I
    .locals 1

    iget-object v0, p0, Landroid/view/textclassifier/TextSelection;->mEntities:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getSelectionEndIndex()I
    .locals 1

    iget v0, p0, Landroid/view/textclassifier/TextSelection;->mEndIndex:I

    return v0
.end method

.method public getSelectionStartIndex()I
    .locals 1

    iget v0, p0, Landroid/view/textclassifier/TextSelection;->mStartIndex:I

    return v0
.end method

.method public getSourceClassifier()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/view/textclassifier/TextSelection;->mLogSource:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionInfo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/view/textclassifier/TextSelection;->mVersionInfo:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    const/4 v0, 0x3

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    iget v1, p0, Landroid/view/textclassifier/TextSelection;->mStartIndex:I

    .line 5
    .line 6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const/4 v2, 0x0

    .line 11
    aput-object v1, v0, v2

    .line 12
    .line 13
    iget v1, p0, Landroid/view/textclassifier/TextSelection;->mEndIndex:I

    .line 14
    .line 15
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const/4 v2, 0x1

    .line 20
    aput-object v1, v0, v2

    .line 21
    .line 22
    const/4 v1, 0x2

    .line 23
    iget-object v2, p0, Landroid/view/textclassifier/TextSelection;->mEntityConfidence:Landroid/view/textclassifier/EntityConfidence;

    .line 24
    .line 25
    aput-object v2, v0, v1

    .line 26
    .line 27
    const-string v1, "TextSelection {%d, %d, %s}"

    .line 28
    .line 29
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    return-object v0
.end method
