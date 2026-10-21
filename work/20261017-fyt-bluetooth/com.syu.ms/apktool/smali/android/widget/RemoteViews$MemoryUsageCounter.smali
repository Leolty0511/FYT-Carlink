.class Landroid/widget/RemoteViews$MemoryUsageCounter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MemoryUsageCounter"
.end annotation


# instance fields
.field public mMemoryUsage:I

.field public final synthetic this$0:Landroid/widget/RemoteViews;


# direct methods
.method private constructor <init>(Landroid/widget/RemoteViews;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/widget/RemoteViews$MemoryUsageCounter;->this$0:Landroid/widget/RemoteViews;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Landroid/widget/RemoteViews$MemoryUsageCounter;-><init>(Landroid/widget/RemoteViews;)V

    return-void
.end method


# virtual methods
.method public addBitmapMemory(Landroid/graphics/Bitmap;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x4

    if-eqz v0, :cond_1

    .line 2
    sget-object v4, Landroid/widget/RemoteViews$3;->$SwitchMap$android$graphics$Bitmap$Config:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v4, v0

    if-eq v0, v2, :cond_0

    if-eq v0, v1, :cond_2

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v3

    .line 3
    :cond_2
    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    mul-int/2addr v0, p1

    mul-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/widget/RemoteViews$MemoryUsageCounter;->increment(I)V

    return-void
.end method

.method public clear()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Landroid/widget/RemoteViews$MemoryUsageCounter;->mMemoryUsage:I

    return-void
.end method

.method public getMemoryUsage()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/widget/RemoteViews$MemoryUsageCounter;->mMemoryUsage:I

    return v0
.end method

.method public increment(I)V
    .locals 1

    .line 1
    iget v0, p0, Landroid/widget/RemoteViews$MemoryUsageCounter;->mMemoryUsage:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/widget/RemoteViews$MemoryUsageCounter;->mMemoryUsage:I

    return-void
.end method
