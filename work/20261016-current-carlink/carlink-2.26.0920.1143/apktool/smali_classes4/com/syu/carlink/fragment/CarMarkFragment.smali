.class public final Lcom/syu/carlink/fragment/CarMarkFragment;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# static fields
.field public static final synthetic b:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8

    .line 1
    const-string p3, "inflater"

    .line 2
    .line 3
    invoke-static {p1, p3}, Lt/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 7
    .line 8
    .line 9
    move-result-object p3

    .line 10
    instance-of p3, p3, Lcom/syu/carlink/MainActivity;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    if-eqz p3, :cond_5

    .line 14
    .line 15
    sget-object p3, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    if-eqz p3, :cond_4

    .line 19
    .line 20
    invoke-virtual {p3}, Lcom/syu/carlink/CarLink;->h()I

    .line 21
    .line 22
    .line 23
    move-result p3

    .line 24
    const/4 v2, 0x2

    .line 25
    new-array v3, v2, [Ljava/lang/Class;

    .line 26
    .line 27
    const-class v4, Ljava/lang/String;

    .line 28
    .line 29
    aput-object v4, v3, v0

    .line 30
    .line 31
    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 32
    .line 33
    invoke-static {v4}, Lt/b;->e(Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    const/4 v5, 0x1

    .line 37
    aput-object v4, v3, v5

    .line 38
    .line 39
    new-array v4, v2, [Ljava/lang/Object;

    .line 40
    .line 41
    const-string v6, "sys.carlink.universal_skin"

    .line 42
    .line 43
    aput-object v6, v4, v0

    .line 44
    .line 45
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 46
    .line 47
    aput-object v6, v4, v5

    .line 48
    .line 49
    const-string v6, "android.os.SystemProperties"

    .line 50
    .line 51
    const-string v7, "getBoolean"

    .line 52
    .line 53
    invoke-static {v6, v1, v7, v3, v4}, Lp/a;->d(Ljava/lang/String;Landroid/net/wifi/WifiManager;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    check-cast v1, Ljava/lang/Boolean;

    .line 58
    .line 59
    if-eqz v1, :cond_0

    .line 60
    .line 61
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    goto :goto_0

    .line 66
    :cond_0
    move v1, v0

    .line 67
    :goto_0
    if-eqz v1, :cond_1

    .line 68
    .line 69
    sget p3, Le/w;->car_logo_layout:I

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_1
    new-array v1, v2, [I

    .line 73
    .line 74
    fill-array-data v1, :array_0

    .line 75
    .line 76
    .line 77
    invoke-static {v1, p3}, Lt/c;->H([II)Z

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    if-eqz v1, :cond_2

    .line 82
    .line 83
    sget p3, Le/w;->car_logo_layout_yuf:I

    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_2
    new-array v1, v5, [I

    .line 87
    .line 88
    const/16 v2, 0x5f

    .line 89
    .line 90
    aput v2, v1, v0

    .line 91
    .line 92
    invoke-static {v1, p3}, Lt/c;->H([II)Z

    .line 93
    .line 94
    .line 95
    move-result p3

    .line 96
    if-eqz p3, :cond_3

    .line 97
    .line 98
    sget p3, Le/w;->car_logo_layout_tzy:I

    .line 99
    .line 100
    goto :goto_1

    .line 101
    :cond_3
    sget p3, Le/w;->car_logo_layout:I

    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_4
    const-string p1, "me"

    .line 105
    .line 106
    invoke-static {p1}, Lt/b;->B(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    throw v1

    .line 110
    :cond_5
    sget p3, Le/w;->car_logo_layout:I

    .line 111
    .line 112
    :goto_1
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    return-object p1

    .line 117
    :array_0
    .array-data 4
        0x70
        0x8c
    .end array-data
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lt/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    if-eqz p2, :cond_1

    .line 14
    .line 15
    sget v0, Le/v;->mark_recyclerview:I

    .line 16
    .line 17
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 22
    .line 23
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 32
    .line 33
    int-to-float v2, v2

    .line 34
    const/16 v3, 0x30

    .line 35
    .line 36
    int-to-float v3, v3

    .line 37
    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 38
    .line 39
    mul-float/2addr v3, v1

    .line 40
    sub-float/2addr v2, v3

    .line 41
    float-to-int v2, v2

    .line 42
    const/16 v3, 0x78

    .line 43
    .line 44
    int-to-float v3, v3

    .line 45
    mul-float/2addr v3, v1

    .line 46
    const/high16 v1, 0x3f000000    # 0.5f

    .line 47
    .line 48
    add-float/2addr v3, v1

    .line 49
    float-to-int v1, v3

    .line 50
    div-int v3, v2, v1

    .line 51
    .line 52
    rem-int/2addr v2, v1

    .line 53
    mul-int/lit8 v1, v3, 0x3

    .line 54
    .line 55
    if-ge v2, v1, :cond_0

    .line 56
    .line 57
    add-int/lit8 v3, v3, -0x1

    .line 58
    .line 59
    :cond_0
    new-instance v1, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 60
    .line 61
    invoke-direct {v1, p2, v3}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 65
    .line 66
    .line 67
    new-instance v1, Lj/d;

    .line 68
    .line 69
    invoke-direct {v1}, Lj/d;-><init>()V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 73
    .line 74
    .line 75
    new-instance v1, Lj/c;

    .line 76
    .line 77
    invoke-direct {v1, p2}, Lj/c;-><init>(Landroid/content/Context;)V

    .line 78
    .line 79
    .line 80
    new-instance p2, Li/b;

    .line 81
    .line 82
    invoke-direct {p2, p0, v1}, Li/b;-><init>(Lcom/syu/carlink/fragment/CarMarkFragment;Lj/c;)V

    .line 83
    .line 84
    .line 85
    iput-object p2, v1, Lj/c;->c:Li/b;

    .line 86
    .line 87
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 88
    .line 89
    .line 90
    :cond_1
    sget p2, Le/v;->back_iv:I

    .line 91
    .line 92
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    if-eqz p1, :cond_2

    .line 97
    .line 98
    new-instance p2, Li/d;

    .line 99
    .line 100
    const/4 v0, 0x2

    .line 101
    invoke-direct {p2, p0, v0}, Li/d;-><init>(Landroidx/fragment/app/Fragment;I)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    .line 106
    .line 107
    :cond_2
    return-void
.end method
