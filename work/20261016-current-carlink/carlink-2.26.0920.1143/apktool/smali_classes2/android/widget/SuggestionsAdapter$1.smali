.class Landroid/widget/SuggestionsAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/Filter$Delayer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/SuggestionsAdapter;-><init>(Landroid/content/Context;Landroid/widget/SearchView;Landroid/app/SearchableInfo;Ljava/util/WeakHashMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private mPreviousLength:I

.field final synthetic this$0:Landroid/widget/SuggestionsAdapter;


# direct methods
.method public constructor <init>(Landroid/widget/SuggestionsAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/widget/SuggestionsAdapter$1;->this$0:Landroid/widget/SuggestionsAdapter;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput p1, p0, Landroid/widget/SuggestionsAdapter$1;->mPreviousLength:I

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public getPostingDelay(Ljava/lang/CharSequence;)J
    .locals 4

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    return-wide v0

    .line 6
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    iget v3, p0, Landroid/widget/SuggestionsAdapter$1;->mPreviousLength:I

    .line 11
    .line 12
    if-ge v2, v3, :cond_1

    .line 13
    .line 14
    const-wide/16 v0, 0x1f4

    .line 15
    .line 16
    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    iput p1, p0, Landroid/widget/SuggestionsAdapter$1;->mPreviousLength:I

    .line 21
    .line 22
    return-wide v0
.end method
