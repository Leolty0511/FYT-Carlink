.class public Landroid/service/autofill/ImageTransformation$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/autofill/ImageTransformation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mDestroyed:Z

.field private final mId:Landroid/view/autofill/AutofillId;

.field private final mOptions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "Ljava/util/regex/Pattern;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/autofill/AutofillId;Ljava/util/regex/Pattern;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroid/service/autofill/ImageTransformation$Builder;->mOptions:Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Landroid/view/autofill/AutofillId;

    .line 16
    .line 17
    iput-object p1, p0, Landroid/service/autofill/ImageTransformation$Builder;->mId:Landroid/view/autofill/AutofillId;

    .line 18
    .line 19
    invoke-virtual {p0, p2, p3}, Landroid/service/autofill/ImageTransformation$Builder;->addOption(Ljava/util/regex/Pattern;I)Landroid/service/autofill/ImageTransformation$Builder;

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public static synthetic access$000(Landroid/service/autofill/ImageTransformation$Builder;)Landroid/view/autofill/AutofillId;
    .locals 0

    iget-object p0, p0, Landroid/service/autofill/ImageTransformation$Builder;->mId:Landroid/view/autofill/AutofillId;

    return-object p0
.end method

.method public static synthetic access$100(Landroid/service/autofill/ImageTransformation$Builder;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Landroid/service/autofill/ImageTransformation$Builder;->mOptions:Ljava/util/ArrayList;

    return-object p0
.end method

.method private throwIfDestroyed()V
    .locals 2

    iget-boolean v0, p0, Landroid/service/autofill/ImageTransformation$Builder;->mDestroyed:Z

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Already called build()"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public addOption(Ljava/util/regex/Pattern;I)Landroid/service/autofill/ImageTransformation$Builder;
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/service/autofill/ImageTransformation$Builder;->throwIfDestroyed()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    if-eqz p2, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Landroid/service/autofill/ImageTransformation$Builder;->mOptions:Ljava/util/ArrayList;

    .line 16
    .line 17
    new-instance v1, Landroid/util/Pair;

    .line 18
    .line 19
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    invoke-direct {v1, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    return-object p0
.end method

.method public build()Landroid/service/autofill/ImageTransformation;
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/service/autofill/ImageTransformation$Builder;->throwIfDestroyed()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Landroid/service/autofill/ImageTransformation$Builder;->mDestroyed:Z

    .line 6
    .line 7
    new-instance v0, Landroid/service/autofill/ImageTransformation;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-direct {v0, p0, v1}, Landroid/service/autofill/ImageTransformation;-><init>(Landroid/service/autofill/ImageTransformation$Builder;Landroid/service/autofill/ImageTransformation$1;)V

    .line 11
    .line 12
    .line 13
    return-object v0
.end method
