.class public final synthetic Landroid/app/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroid/app/WallpaperManager$Globals;

.field public final synthetic c:Landroid/util/Pair;

.field public final synthetic d:Landroid/app/WallpaperColors;

.field public final synthetic e:I

.field public final synthetic f:I


# direct methods
.method public synthetic constructor <init>(Landroid/app/WallpaperManager$Globals;Landroid/util/Pair;Landroid/app/WallpaperColors;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/s;->b:Landroid/app/WallpaperManager$Globals;

    iput-object p2, p0, Landroid/app/s;->c:Landroid/util/Pair;

    iput-object p3, p0, Landroid/app/s;->d:Landroid/app/WallpaperColors;

    iput p4, p0, Landroid/app/s;->e:I

    iput p5, p0, Landroid/app/s;->f:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget v0, p0, Landroid/app/s;->e:I

    iget v1, p0, Landroid/app/s;->f:I

    iget-object v2, p0, Landroid/app/s;->b:Landroid/app/WallpaperManager$Globals;

    iget-object v3, p0, Landroid/app/s;->c:Landroid/util/Pair;

    iget-object v4, p0, Landroid/app/s;->d:Landroid/app/WallpaperColors;

    invoke-static {v2, v3, v4, v0, v1}, Landroid/app/WallpaperManager$Globals;->a(Landroid/app/WallpaperManager$Globals;Landroid/util/Pair;Landroid/app/WallpaperColors;II)V

    return-void
.end method
