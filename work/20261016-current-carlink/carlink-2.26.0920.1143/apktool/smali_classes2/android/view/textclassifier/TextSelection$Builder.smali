.class public final Landroid/view/textclassifier/TextSelection$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/textclassifier/TextSelection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final mEndIndex:I

.field private final mEntityConfidence:Landroid/view/textclassifier/EntityConfidence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/view/textclassifier/EntityConfidence<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLogSource:Ljava/lang/String;

.field private final mStartIndex:I

.field private mVersionInfo:Ljava/lang/String;


# direct methods
.method public constructor <init>(II)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/view/textclassifier/EntityConfidence;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/view/textclassifier/EntityConfidence;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroid/view/textclassifier/TextSelection$Builder;->mEntityConfidence:Landroid/view/textclassifier/EntityConfidence;

    .line 10
    .line 11
    const-string v0, ""

    .line 12
    .line 13
    iput-object v0, p0, Landroid/view/textclassifier/TextSelection$Builder;->mLogSource:Ljava/lang/String;

    .line 14
    .line 15
    iput-object v0, p0, Landroid/view/textclassifier/TextSelection$Builder;->mVersionInfo:Ljava/lang/String;

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    const/4 v1, 0x0

    .line 19
    if-ltz p1, :cond_0

    .line 20
    .line 21
    move v2, v0

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move v2, v1

    .line 24
    :goto_0
    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 25
    .line 26
    .line 27
    if-le p2, p1, :cond_1

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    move v0, v1

    .line 31
    :goto_1
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 32
    .line 33
    .line 34
    iput p1, p0, Landroid/view/textclassifier/TextSelection$Builder;->mStartIndex:I

    .line 35
    .line 36
    iput p2, p0, Landroid/view/textclassifier/TextSelection$Builder;->mEndIndex:I

    .line 37
    .line 38
    return-void
.end method


# virtual methods
.method public build()Landroid/view/textclassifier/TextSelection;
    .locals 8

    new-instance v7, Landroid/view/textclassifier/TextSelection;

    iget v1, p0, Landroid/view/textclassifier/TextSelection$Builder;->mStartIndex:I

    iget v2, p0, Landroid/view/textclassifier/TextSelection$Builder;->mEndIndex:I

    iget-object v3, p0, Landroid/view/textclassifier/TextSelection$Builder;->mEntityConfidence:Landroid/view/textclassifier/EntityConfidence;

    iget-object v4, p0, Landroid/view/textclassifier/TextSelection$Builder;->mLogSource:Ljava/lang/String;

    iget-object v5, p0, Landroid/view/textclassifier/TextSelection$Builder;->mVersionInfo:Ljava/lang/String;

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Landroid/view/textclassifier/TextSelection;-><init>(IILandroid/view/textclassifier/EntityConfidence;Ljava/lang/String;Ljava/lang/String;Landroid/view/textclassifier/TextSelection$1;)V

    return-object v7
.end method

.method public setEntityType(Ljava/lang/String;F)Landroid/view/textclassifier/TextSelection$Builder;
    .locals 1

    iget-object v0, p0, Landroid/view/textclassifier/TextSelection$Builder;->mEntityConfidence:Landroid/view/textclassifier/EntityConfidence;

    invoke-virtual {v0, p1, p2}, Landroid/view/textclassifier/EntityConfidence;->setEntityType(Ljava/lang/Object;F)V

    return-object p0
.end method

.method public setLogSource(Ljava/lang/String;)Landroid/view/textclassifier/TextSelection$Builder;
    .locals 0

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Landroid/view/textclassifier/TextSelection$Builder;->mLogSource:Ljava/lang/String;

    return-object p0
.end method

.method public setVersionInfo(Ljava/lang/String;)Landroid/view/textclassifier/TextSelection$Builder;
    .locals 0

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Landroid/view/textclassifier/TextSelection$Builder;->mVersionInfo:Ljava/lang/String;

    return-object p0
.end method
