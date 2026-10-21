.class final Landroid/view/FocusFinder$UserSpecifiedFocusComparator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/FocusFinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UserSpecifiedFocusComparator"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/FocusFinder$UserSpecifiedFocusComparator$NextFocusGetter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field private final mHeadsOfChains:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/view/View;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mIsConnectedTo:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mNextFoci:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/view/View;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mNextFocusGetter:Landroid/view/FocusFinder$UserSpecifiedFocusComparator$NextFocusGetter;

.field private final mOriginalOrdinal:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mRoot:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/FocusFinder$UserSpecifiedFocusComparator$NextFocusGetter;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/ArrayMap;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroid/view/FocusFinder$UserSpecifiedFocusComparator;->mNextFoci:Landroid/util/ArrayMap;

    .line 10
    .line 11
    new-instance v0, Landroid/util/ArraySet;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Landroid/view/FocusFinder$UserSpecifiedFocusComparator;->mIsConnectedTo:Landroid/util/ArraySet;

    .line 17
    .line 18
    new-instance v0, Landroid/util/ArrayMap;

    .line 19
    .line 20
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Landroid/view/FocusFinder$UserSpecifiedFocusComparator;->mHeadsOfChains:Landroid/util/ArrayMap;

    .line 24
    .line 25
    new-instance v0, Landroid/util/ArrayMap;

    .line 26
    .line 27
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Landroid/view/FocusFinder$UserSpecifiedFocusComparator;->mOriginalOrdinal:Landroid/util/ArrayMap;

    .line 31
    .line 32
    iput-object p1, p0, Landroid/view/FocusFinder$UserSpecifiedFocusComparator;->mNextFocusGetter:Landroid/view/FocusFinder$UserSpecifiedFocusComparator$NextFocusGetter;

    .line 33
    .line 34
    return-void
.end method

.method private setHeadOfChain(Landroid/view/View;)V
    .locals 2

    .line 1
    move-object v0, p1

    .line 2
    :goto_0
    if-eqz p1, :cond_2

    .line 3
    .line 4
    iget-object v1, p0, Landroid/view/FocusFinder$UserSpecifiedFocusComparator;->mHeadsOfChains:Landroid/util/ArrayMap;

    .line 5
    .line 6
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    check-cast v1, Landroid/view/View;

    .line 11
    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    if-ne v1, v0, :cond_0

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    move-object p1, v0

    .line 18
    move-object v0, v1

    .line 19
    :cond_1
    iget-object v1, p0, Landroid/view/FocusFinder$UserSpecifiedFocusComparator;->mHeadsOfChains:Landroid/util/ArrayMap;

    .line 20
    .line 21
    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    iget-object v1, p0, Landroid/view/FocusFinder$UserSpecifiedFocusComparator;->mNextFoci:Landroid/util/ArrayMap;

    .line 25
    .line 26
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    check-cast p1, Landroid/view/View;

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_2
    return-void
.end method


# virtual methods
.method public compare(Landroid/view/View;Landroid/view/View;)I
    .locals 5

    const/4 v0, 0x0

    if-ne p1, p2, :cond_0

    return v0

    .line 2
    :cond_0
    iget-object v1, p0, Landroid/view/FocusFinder$UserSpecifiedFocusComparator;->mHeadsOfChains:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 3
    iget-object v2, p0, Landroid/view/FocusFinder$UserSpecifiedFocusComparator;->mHeadsOfChains:Landroid/util/ArrayMap;

    invoke-virtual {v2, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-ne v1, v2, :cond_4

    if-eqz v1, :cond_4

    if-ne p1, v1, :cond_1

    return v3

    :cond_1
    if-ne p2, v1, :cond_2

    return v4

    .line 4
    :cond_2
    iget-object p2, p0, Landroid/view/FocusFinder$UserSpecifiedFocusComparator;->mNextFoci:Landroid/util/ArrayMap;

    invoke-virtual {p2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_3

    return v3

    :cond_3
    return v4

    :cond_4
    if-eqz v1, :cond_5

    move-object p1, v1

    move v1, v4

    goto :goto_0

    :cond_5
    move v1, v0

    :goto_0
    if-eqz v2, :cond_6

    move-object p2, v2

    move v1, v4

    :cond_6
    if-eqz v1, :cond_8

    .line 5
    iget-object v0, p0, Landroid/view/FocusFinder$UserSpecifiedFocusComparator;->mOriginalOrdinal:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v0, p0, Landroid/view/FocusFinder$UserSpecifiedFocusComparator;->mOriginalOrdinal:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-ge p1, p2, :cond_7

    goto :goto_1

    :cond_7
    move v3, v4

    :goto_1
    return v3

    :cond_8
    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Landroid/view/View;

    check-cast p2, Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Landroid/view/FocusFinder$UserSpecifiedFocusComparator;->compare(Landroid/view/View;Landroid/view/View;)I

    move-result p1

    return p1
.end method

.method public recycle()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroid/view/FocusFinder$UserSpecifiedFocusComparator;->mRoot:Landroid/view/View;

    .line 3
    .line 4
    iget-object v0, p0, Landroid/view/FocusFinder$UserSpecifiedFocusComparator;->mHeadsOfChains:Landroid/util/ArrayMap;

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Landroid/view/FocusFinder$UserSpecifiedFocusComparator;->mIsConnectedTo:Landroid/util/ArraySet;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Landroid/view/FocusFinder$UserSpecifiedFocusComparator;->mOriginalOrdinal:Landroid/util/ArrayMap;

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Landroid/view/FocusFinder$UserSpecifiedFocusComparator;->mNextFoci:Landroid/util/ArrayMap;

    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public setFocusables(Ljava/util/List;Landroid/view/View;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p2, p0, Landroid/view/FocusFinder$UserSpecifiedFocusComparator;->mRoot:Landroid/view/View;

    .line 2
    .line 3
    const/4 p2, 0x0

    .line 4
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-ge p2, v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Landroid/view/FocusFinder$UserSpecifiedFocusComparator;->mOriginalOrdinal:Landroid/util/ArrayMap;

    .line 11
    .line 12
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    add-int/lit8 p2, p2, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 27
    .line 28
    .line 29
    move-result p2

    .line 30
    add-int/lit8 p2, p2, -0x1

    .line 31
    .line 32
    :goto_1
    if-ltz p2, :cond_2

    .line 33
    .line 34
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    check-cast v0, Landroid/view/View;

    .line 39
    .line 40
    iget-object v1, p0, Landroid/view/FocusFinder$UserSpecifiedFocusComparator;->mNextFocusGetter:Landroid/view/FocusFinder$UserSpecifiedFocusComparator$NextFocusGetter;

    .line 41
    .line 42
    iget-object v2, p0, Landroid/view/FocusFinder$UserSpecifiedFocusComparator;->mRoot:Landroid/view/View;

    .line 43
    .line 44
    invoke-interface {v1, v2, v0}, Landroid/view/FocusFinder$UserSpecifiedFocusComparator$NextFocusGetter;->get(Landroid/view/View;Landroid/view/View;)Landroid/view/View;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    if-eqz v1, :cond_1

    .line 49
    .line 50
    iget-object v2, p0, Landroid/view/FocusFinder$UserSpecifiedFocusComparator;->mOriginalOrdinal:Landroid/util/ArrayMap;

    .line 51
    .line 52
    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    if-eqz v2, :cond_1

    .line 57
    .line 58
    iget-object v2, p0, Landroid/view/FocusFinder$UserSpecifiedFocusComparator;->mNextFoci:Landroid/util/ArrayMap;

    .line 59
    .line 60
    invoke-virtual {v2, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    iget-object v0, p0, Landroid/view/FocusFinder$UserSpecifiedFocusComparator;->mIsConnectedTo:Landroid/util/ArraySet;

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    :cond_1
    add-int/lit8 p2, p2, -0x1

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 72
    .line 73
    .line 74
    move-result p2

    .line 75
    add-int/lit8 p2, p2, -0x1

    .line 76
    .line 77
    :goto_2
    if-ltz p2, :cond_4

    .line 78
    .line 79
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    check-cast v0, Landroid/view/View;

    .line 84
    .line 85
    iget-object v1, p0, Landroid/view/FocusFinder$UserSpecifiedFocusComparator;->mNextFoci:Landroid/util/ArrayMap;

    .line 86
    .line 87
    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    check-cast v1, Landroid/view/View;

    .line 92
    .line 93
    if-eqz v1, :cond_3

    .line 94
    .line 95
    iget-object v1, p0, Landroid/view/FocusFinder$UserSpecifiedFocusComparator;->mIsConnectedTo:Landroid/util/ArraySet;

    .line 96
    .line 97
    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result v1

    .line 101
    if-nez v1, :cond_3

    .line 102
    .line 103
    invoke-direct {p0, v0}, Landroid/view/FocusFinder$UserSpecifiedFocusComparator;->setHeadOfChain(Landroid/view/View;)V

    .line 104
    .line 105
    .line 106
    :cond_3
    add-int/lit8 p2, p2, -0x1

    .line 107
    .line 108
    goto :goto_2

    .line 109
    :cond_4
    return-void
.end method
