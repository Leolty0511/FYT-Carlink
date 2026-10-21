.class Landroid/app/LoadedApk$SplitDependencyLoaderImpl;
.super Landroid/content/pm/split/SplitDependencyLoader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/LoadedApk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SplitDependencyLoaderImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/pm/split/SplitDependencyLoader<",
        "Landroid/content/pm/PackageManager$NameNotFoundException;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCachedClassLoaders:[Ljava/lang/ClassLoader;

.field private final mCachedResourcePaths:[[Ljava/lang/String;

.field final synthetic this$0:Landroid/app/LoadedApk;


# direct methods
.method public constructor <init>(Landroid/app/LoadedApk;Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "[I>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroid/app/LoadedApk$SplitDependencyLoaderImpl;->this$0:Landroid/app/LoadedApk;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/content/pm/split/SplitDependencyLoader;-><init>(Landroid/util/SparseArray;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Landroid/app/LoadedApk;->access$000(Landroid/app/LoadedApk;)[Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    array-length p2, p2

    .line 11
    add-int/lit8 p2, p2, 0x1

    .line 12
    .line 13
    new-array p2, p2, [[Ljava/lang/String;

    .line 14
    .line 15
    iput-object p2, p0, Landroid/app/LoadedApk$SplitDependencyLoaderImpl;->mCachedResourcePaths:[[Ljava/lang/String;

    .line 16
    .line 17
    invoke-static {p1}, Landroid/app/LoadedApk;->access$000(Landroid/app/LoadedApk;)[Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    array-length p1, p1

    .line 22
    add-int/lit8 p1, p1, 0x1

    .line 23
    .line 24
    new-array p1, p1, [Ljava/lang/ClassLoader;

    .line 25
    .line 26
    iput-object p1, p0, Landroid/app/LoadedApk$SplitDependencyLoaderImpl;->mCachedClassLoaders:[Ljava/lang/ClassLoader;

    .line 27
    .line 28
    return-void
.end method

.method private ensureSplitLoaded(Ljava/lang/String;)I
    .locals 3

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    iget-object v0, p0, Landroid/app/LoadedApk$SplitDependencyLoaderImpl;->this$0:Landroid/app/LoadedApk;

    .line 4
    .line 5
    invoke-static {v0}, Landroid/app/LoadedApk;->access$000(Landroid/app/LoadedApk;)[Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-ltz v0, :cond_0

    .line 14
    .line 15
    add-int/lit8 v0, v0, 0x1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    new-instance v0, Landroid/content/pm/PackageManager$NameNotFoundException;

    .line 19
    .line 20
    const-string v1, "Split name \'"

    .line 21
    .line 22
    const-string v2, "\' is not installed"

    .line 23
    .line 24
    invoke-static {v1, p1, v2}, Landroid/accessibilityservice/c;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-direct {v0, p1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw v0

    .line 32
    :cond_1
    const/4 v0, 0x0

    .line 33
    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/pm/split/SplitDependencyLoader;->loadDependenciesForSplit(I)V

    .line 34
    .line 35
    .line 36
    return v0
.end method


# virtual methods
.method public constructSplit(I[II)V
    .locals 12

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-nez p1, :cond_1

    .line 8
    .line 9
    iget-object p1, p0, Landroid/app/LoadedApk$SplitDependencyLoaderImpl;->this$0:Landroid/app/LoadedApk;

    .line 10
    .line 11
    const/4 p3, 0x0

    .line 12
    invoke-static {p1, p3}, Landroid/app/LoadedApk;->access$100(Landroid/app/LoadedApk;Ljava/util/List;)V

    .line 13
    .line 14
    .line 15
    iget-object p1, p0, Landroid/app/LoadedApk$SplitDependencyLoaderImpl;->mCachedClassLoaders:[Ljava/lang/ClassLoader;

    .line 16
    .line 17
    iget-object p3, p0, Landroid/app/LoadedApk$SplitDependencyLoaderImpl;->this$0:Landroid/app/LoadedApk;

    .line 18
    .line 19
    invoke-static {p3}, Landroid/app/LoadedApk;->access$200(Landroid/app/LoadedApk;)Ljava/lang/ClassLoader;

    .line 20
    .line 21
    .line 22
    move-result-object p3

    .line 23
    aput-object p3, p1, v1

    .line 24
    .line 25
    array-length p1, p2

    .line 26
    move p3, v1

    .line 27
    :goto_0
    if-ge p3, p1, :cond_0

    .line 28
    .line 29
    aget v2, p2, p3

    .line 30
    .line 31
    iget-object v3, p0, Landroid/app/LoadedApk$SplitDependencyLoaderImpl;->this$0:Landroid/app/LoadedApk;

    .line 32
    .line 33
    invoke-static {v3}, Landroid/app/LoadedApk;->access$300(Landroid/app/LoadedApk;)[Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    add-int/lit8 v2, v2, -0x1

    .line 38
    .line 39
    aget-object v2, v3, v2

    .line 40
    .line 41
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    add-int/lit8 p3, p3, 0x1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    iget-object p1, p0, Landroid/app/LoadedApk$SplitDependencyLoaderImpl;->mCachedResourcePaths:[[Ljava/lang/String;

    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 50
    .line 51
    .line 52
    move-result p2

    .line 53
    new-array p2, p2, [Ljava/lang/String;

    .line 54
    .line 55
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    check-cast p2, [Ljava/lang/String;

    .line 60
    .line 61
    aput-object p2, p1, v1

    .line 62
    .line 63
    return-void

    .line 64
    :cond_1
    iget-object v2, p0, Landroid/app/LoadedApk$SplitDependencyLoaderImpl;->mCachedClassLoaders:[Ljava/lang/ClassLoader;

    .line 65
    .line 66
    aget-object v9, v2, p3

    .line 67
    .line 68
    invoke-static {}, Landroid/app/ApplicationLoaders;->getDefault()Landroid/app/ApplicationLoaders;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    iget-object v4, p0, Landroid/app/LoadedApk$SplitDependencyLoaderImpl;->this$0:Landroid/app/LoadedApk;

    .line 73
    .line 74
    invoke-static {v4}, Landroid/app/LoadedApk;->access$400(Landroid/app/LoadedApk;)[Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v4

    .line 78
    add-int/lit8 v11, p1, -0x1

    .line 79
    .line 80
    aget-object v4, v4, v11

    .line 81
    .line 82
    iget-object v5, p0, Landroid/app/LoadedApk$SplitDependencyLoaderImpl;->this$0:Landroid/app/LoadedApk;

    .line 83
    .line 84
    invoke-virtual {v5}, Landroid/app/LoadedApk;->getTargetSdkVersion()I

    .line 85
    .line 86
    .line 87
    move-result v5

    .line 88
    const/4 v6, 0x0

    .line 89
    const/4 v7, 0x0

    .line 90
    const/4 v8, 0x0

    .line 91
    iget-object v10, p0, Landroid/app/LoadedApk$SplitDependencyLoaderImpl;->this$0:Landroid/app/LoadedApk;

    .line 92
    .line 93
    invoke-static {v10}, Landroid/app/LoadedApk;->access$500(Landroid/app/LoadedApk;)[Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v10

    .line 97
    aget-object v10, v10, v11

    .line 98
    .line 99
    invoke-virtual/range {v3 .. v10}, Landroid/app/ApplicationLoaders;->getClassLoader(Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/ClassLoader;

    .line 100
    .line 101
    .line 102
    move-result-object v3

    .line 103
    aput-object v3, v2, p1

    .line 104
    .line 105
    iget-object v2, p0, Landroid/app/LoadedApk$SplitDependencyLoaderImpl;->mCachedResourcePaths:[[Ljava/lang/String;

    .line 106
    .line 107
    aget-object p3, v2, p3

    .line 108
    .line 109
    invoke-static {v0, p3}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    iget-object p3, p0, Landroid/app/LoadedApk$SplitDependencyLoaderImpl;->this$0:Landroid/app/LoadedApk;

    .line 113
    .line 114
    invoke-static {p3}, Landroid/app/LoadedApk;->access$300(Landroid/app/LoadedApk;)[Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object p3

    .line 118
    aget-object p3, p3, v11

    .line 119
    .line 120
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    array-length p3, p2

    .line 124
    :goto_1
    if-ge v1, p3, :cond_2

    .line 125
    .line 126
    aget v2, p2, v1

    .line 127
    .line 128
    iget-object v3, p0, Landroid/app/LoadedApk$SplitDependencyLoaderImpl;->this$0:Landroid/app/LoadedApk;

    .line 129
    .line 130
    invoke-static {v3}, Landroid/app/LoadedApk;->access$300(Landroid/app/LoadedApk;)[Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v3

    .line 134
    add-int/lit8 v2, v2, -0x1

    .line 135
    .line 136
    aget-object v2, v3, v2

    .line 137
    .line 138
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    add-int/lit8 v1, v1, 0x1

    .line 142
    .line 143
    goto :goto_1

    .line 144
    :cond_2
    iget-object p2, p0, Landroid/app/LoadedApk$SplitDependencyLoaderImpl;->mCachedResourcePaths:[[Ljava/lang/String;

    .line 145
    .line 146
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 147
    .line 148
    .line 149
    move-result p3

    .line 150
    new-array p3, p3, [Ljava/lang/String;

    .line 151
    .line 152
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object p3

    .line 156
    check-cast p3, [Ljava/lang/String;

    .line 157
    .line 158
    aput-object p3, p2, p1

    .line 159
    .line 160
    return-void
.end method

.method public getClassLoaderForSplit(Ljava/lang/String;)Ljava/lang/ClassLoader;
    .locals 1

    iget-object v0, p0, Landroid/app/LoadedApk$SplitDependencyLoaderImpl;->mCachedClassLoaders:[Ljava/lang/ClassLoader;

    invoke-direct {p0, p1}, Landroid/app/LoadedApk$SplitDependencyLoaderImpl;->ensureSplitLoaded(Ljava/lang/String;)I

    move-result p1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getSplitPathsForSplit(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/app/LoadedApk$SplitDependencyLoaderImpl;->mCachedResourcePaths:[[Ljava/lang/String;

    invoke-direct {p0, p1}, Landroid/app/LoadedApk$SplitDependencyLoaderImpl;->ensureSplitLoaded(Ljava/lang/String;)I

    move-result p1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public isSplitCached(I)Z
    .locals 1

    iget-object v0, p0, Landroid/app/LoadedApk$SplitDependencyLoaderImpl;->mCachedClassLoaders:[Ljava/lang/ClassLoader;

    aget-object p1, v0, p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
