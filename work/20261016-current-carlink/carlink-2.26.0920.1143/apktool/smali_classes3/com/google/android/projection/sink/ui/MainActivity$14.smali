.class Lcom/google/android/projection/sink/ui/MainActivity$14;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/projection/protocol/GalReceiver$ProjectedModeIconReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/projection/sink/ui/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/projection/sink/ui/MainActivity;


# direct methods
.method public constructor <init>(Lcom/google/android/projection/sink/ui/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/sink/ui/MainActivity$14;->this$0:Lcom/google/android/projection/sink/ui/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setProjectedModeIcon([BLjava/lang/String;)V
    .locals 6

    .line 1
    array-length v0, p1

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-static {p1, v1, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 8
    .line 9
    iget-object v0, p0, Lcom/google/android/projection/sink/ui/MainActivity$14;->this$0:Lcom/google/android/projection/sink/ui/MainActivity;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-direct {v1, v0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 20
    .line 21
    .line 22
    const/4 p1, 0x1

    .line 23
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/BitmapDrawable;->setAntiAlias(Z)V

    .line 24
    .line 25
    .line 26
    new-instance p1, Landroid/graphics/drawable/InsetDrawable;

    .line 27
    .line 28
    const/16 v2, 0xf

    .line 29
    .line 30
    const/4 v3, 0x0

    .line 31
    const/16 v4, -0xf

    .line 32
    .line 33
    const/4 v5, 0x0

    .line 34
    move-object v0, p1

    .line 35
    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lcom/google/android/projection/sink/ui/MainActivity$14;->this$0:Lcom/google/android/projection/sink/ui/MainActivity;

    .line 39
    .line 40
    invoke-static {v0}, Lcom/google/android/projection/sink/ui/MainActivity;->access$1100(Lcom/google/android/projection/sink/ui/MainActivity;)Lcom/google/android/projection/sink/ui/TestTools;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {v0, p1, p2}, Lcom/google/android/projection/sink/ui/TestTools;->setApplicationIcon(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    return-void
.end method
