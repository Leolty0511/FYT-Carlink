.class Landroid/app/WallpaperManager$WallpaperSetCompletion;
.super Landroid/app/IWallpaperManagerCallback$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/WallpaperManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WallpaperSetCompletion"
.end annotation


# instance fields
.field final mLatch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic this$0:Landroid/app/WallpaperManager;


# direct methods
.method public constructor <init>(Landroid/app/WallpaperManager;)V
    .locals 1

    .line 1
    iput-object p1, p0, Landroid/app/WallpaperManager$WallpaperSetCompletion;->this$0:Landroid/app/WallpaperManager;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/app/IWallpaperManagerCallback$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    invoke-direct {p1, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 10
    .line 11
    .line 12
    iput-object p1, p0, Landroid/app/WallpaperManager$WallpaperSetCompletion;->mLatch:Ljava/util/concurrent/CountDownLatch;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public onWallpaperChanged()V
    .locals 1

    iget-object v0, p0, Landroid/app/WallpaperManager$WallpaperSetCompletion;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public onWallpaperColorsChanged(Landroid/app/WallpaperColors;II)V
    .locals 1

    invoke-static {}, Landroid/app/WallpaperManager;->access$100()Landroid/app/WallpaperManager$Globals;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/WallpaperManager$Globals;->onWallpaperColorsChanged(Landroid/app/WallpaperColors;II)V

    return-void
.end method

.method public waitForCompletion()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Landroid/app/WallpaperManager$WallpaperSetCompletion;->mLatch:Ljava/util/concurrent/CountDownLatch;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1e

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
