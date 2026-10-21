.class public final Landroid/view/textclassifier/TextClassification$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/textclassifier/TextClassification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final mEntityConfidence:Landroid/view/textclassifier/EntityConfidence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/view/textclassifier/EntityConfidence<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIntent:Landroid/content/Intent;

.field private mLabel:Ljava/lang/String;

.field private mLogType:I

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mText:Ljava/lang/String;

.field private mVersionInfo:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

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
    iput-object v0, p0, Landroid/view/textclassifier/TextClassification$Builder;->mEntityConfidence:Landroid/view/textclassifier/EntityConfidence;

    .line 10
    .line 11
    const-string v0, ""

    .line 12
    .line 13
    iput-object v0, p0, Landroid/view/textclassifier/TextClassification$Builder;->mVersionInfo:Ljava/lang/String;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public build()Landroid/view/textclassifier/TextClassification;
    .locals 11

    new-instance v10, Landroid/view/textclassifier/TextClassification;

    iget-object v1, p0, Landroid/view/textclassifier/TextClassification$Builder;->mText:Ljava/lang/String;

    iget-object v2, p0, Landroid/view/textclassifier/TextClassification$Builder;->mIcon:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Landroid/view/textclassifier/TextClassification$Builder;->mLabel:Ljava/lang/String;

    iget-object v4, p0, Landroid/view/textclassifier/TextClassification$Builder;->mIntent:Landroid/content/Intent;

    iget-object v5, p0, Landroid/view/textclassifier/TextClassification$Builder;->mOnClickListener:Landroid/view/View$OnClickListener;

    iget-object v6, p0, Landroid/view/textclassifier/TextClassification$Builder;->mEntityConfidence:Landroid/view/textclassifier/EntityConfidence;

    iget v7, p0, Landroid/view/textclassifier/TextClassification$Builder;->mLogType:I

    iget-object v8, p0, Landroid/view/textclassifier/TextClassification$Builder;->mVersionInfo:Ljava/lang/String;

    const/4 v9, 0x0

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Landroid/view/textclassifier/TextClassification;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/content/Intent;Landroid/view/View$OnClickListener;Landroid/view/textclassifier/EntityConfidence;ILjava/lang/String;Landroid/view/textclassifier/TextClassification$1;)V

    return-object v10
.end method

.method public setEntityType(Ljava/lang/String;F)Landroid/view/textclassifier/TextClassification$Builder;
    .locals 1

    iget-object v0, p0, Landroid/view/textclassifier/TextClassification$Builder;->mEntityConfidence:Landroid/view/textclassifier/EntityConfidence;

    invoke-virtual {v0, p1, p2}, Landroid/view/textclassifier/EntityConfidence;->setEntityType(Ljava/lang/Object;F)V

    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/textclassifier/TextClassification$Builder;
    .locals 0

    iput-object p1, p0, Landroid/view/textclassifier/TextClassification$Builder;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public setIntent(Landroid/content/Intent;)Landroid/view/textclassifier/TextClassification$Builder;
    .locals 0

    iput-object p1, p0, Landroid/view/textclassifier/TextClassification$Builder;->mIntent:Landroid/content/Intent;

    return-object p0
.end method

.method public setLabel(Ljava/lang/String;)Landroid/view/textclassifier/TextClassification$Builder;
    .locals 0

    iput-object p1, p0, Landroid/view/textclassifier/TextClassification$Builder;->mLabel:Ljava/lang/String;

    return-object p0
.end method

.method public setLogType(I)Landroid/view/textclassifier/TextClassification$Builder;
    .locals 0

    iput p1, p0, Landroid/view/textclassifier/TextClassification$Builder;->mLogType:I

    return-object p0
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)Landroid/view/textclassifier/TextClassification$Builder;
    .locals 0

    iput-object p1, p0, Landroid/view/textclassifier/TextClassification$Builder;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method public setText(Ljava/lang/String;)Landroid/view/textclassifier/TextClassification$Builder;
    .locals 0

    iput-object p1, p0, Landroid/view/textclassifier/TextClassification$Builder;->mText:Ljava/lang/String;

    return-object p0
.end method

.method public setVersionInfo(Ljava/lang/String;)Landroid/view/textclassifier/TextClassification$Builder;
    .locals 0

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Landroid/view/textclassifier/TextClassification$Builder;->mVersionInfo:Ljava/lang/String;

    return-object p0
.end method
