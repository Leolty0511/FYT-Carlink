.class public Landroid/app/FragmentManagerNonConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mChildNonConfigs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/FragmentManagerNonConfig;",
            ">;"
        }
    .end annotation
.end field

.field private final mFragments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/Fragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/Fragment;",
            ">;",
            "Ljava/util/List<",
            "Landroid/app/FragmentManagerNonConfig;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroid/app/FragmentManagerNonConfig;->mFragments:Ljava/util/List;

    .line 5
    .line 6
    iput-object p2, p0, Landroid/app/FragmentManagerNonConfig;->mChildNonConfigs:Ljava/util/List;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public getChildNonConfigs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/FragmentManagerNonConfig;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/app/FragmentManagerNonConfig;->mChildNonConfigs:Ljava/util/List;

    return-object v0
.end method

.method public getFragments()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/Fragment;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/app/FragmentManagerNonConfig;->mFragments:Ljava/util/List;

    return-object v0
.end method
