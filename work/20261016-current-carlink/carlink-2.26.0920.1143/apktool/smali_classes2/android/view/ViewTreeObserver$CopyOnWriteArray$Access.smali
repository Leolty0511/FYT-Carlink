.class Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewTreeObserver$CopyOnWriteArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Access"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mSize:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000(Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;->mData:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static synthetic access$002(Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;->mData:Ljava/util/ArrayList;

    return-object p1
.end method

.method public static synthetic access$102(Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;I)I
    .locals 0

    iput p1, p0, Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;->mSize:I

    return p1
.end method


# virtual methods
.method public get(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    iget-object v0, p0, Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .locals 1

    iget v0, p0, Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;->mSize:I

    return v0
.end method
