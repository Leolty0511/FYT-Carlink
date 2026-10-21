.class Landroid/graphics/drawable/AnimatedRotateDrawable$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/AnimatedRotateDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/graphics/drawable/AnimatedRotateDrawable;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/AnimatedRotateDrawable;)V
    .locals 0

    iput-object p1, p0, Landroid/graphics/drawable/AnimatedRotateDrawable$1;->this$0:Landroid/graphics/drawable/AnimatedRotateDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedRotateDrawable$1;->this$0:Landroid/graphics/drawable/AnimatedRotateDrawable;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/graphics/drawable/AnimatedRotateDrawable;->access$200(Landroid/graphics/drawable/AnimatedRotateDrawable;)F

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    iget-object v2, p0, Landroid/graphics/drawable/AnimatedRotateDrawable$1;->this$0:Landroid/graphics/drawable/AnimatedRotateDrawable;

    .line 8
    .line 9
    invoke-static {v2}, Landroid/graphics/drawable/AnimatedRotateDrawable;->access$300(Landroid/graphics/drawable/AnimatedRotateDrawable;)F

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    add-float/2addr v2, v1

    .line 14
    invoke-static {v0, v2}, Landroid/graphics/drawable/AnimatedRotateDrawable;->access$202(Landroid/graphics/drawable/AnimatedRotateDrawable;F)F

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedRotateDrawable$1;->this$0:Landroid/graphics/drawable/AnimatedRotateDrawable;

    .line 18
    .line 19
    invoke-static {v0}, Landroid/graphics/drawable/AnimatedRotateDrawable;->access$200(Landroid/graphics/drawable/AnimatedRotateDrawable;)F

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedRotateDrawable$1;->this$0:Landroid/graphics/drawable/AnimatedRotateDrawable;

    .line 24
    .line 25
    invoke-static {v1}, Landroid/graphics/drawable/AnimatedRotateDrawable;->access$300(Landroid/graphics/drawable/AnimatedRotateDrawable;)F

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    const/high16 v2, 0x43b40000    # 360.0f

    .line 30
    .line 31
    sub-float/2addr v2, v1

    .line 32
    cmpl-float v0, v0, v2

    .line 33
    .line 34
    if-lez v0, :cond_0

    .line 35
    .line 36
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedRotateDrawable$1;->this$0:Landroid/graphics/drawable/AnimatedRotateDrawable;

    .line 37
    .line 38
    const/4 v1, 0x0

    .line 39
    invoke-static {v0, v1}, Landroid/graphics/drawable/AnimatedRotateDrawable;->access$202(Landroid/graphics/drawable/AnimatedRotateDrawable;F)F

    .line 40
    .line 41
    .line 42
    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedRotateDrawable$1;->this$0:Landroid/graphics/drawable/AnimatedRotateDrawable;

    .line 43
    .line 44
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedRotateDrawable$1;->this$0:Landroid/graphics/drawable/AnimatedRotateDrawable;

    .line 48
    .line 49
    invoke-static {v0}, Landroid/graphics/drawable/AnimatedRotateDrawable;->access$400(Landroid/graphics/drawable/AnimatedRotateDrawable;)V

    .line 50
    .line 51
    .line 52
    return-void
.end method
