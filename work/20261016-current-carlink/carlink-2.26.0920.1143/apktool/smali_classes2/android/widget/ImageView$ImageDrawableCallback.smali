.class Landroid/widget/ImageView$ImageDrawableCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ImageDrawableCallback"
.end annotation


# instance fields
.field private final drawable:Landroid/graphics/drawable/Drawable;

.field private final resource:I

.field final synthetic this$0:Landroid/widget/ImageView;

.field private final uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Landroid/net/Uri;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/widget/ImageView$ImageDrawableCallback;->this$0:Landroid/widget/ImageView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Landroid/widget/ImageView$ImageDrawableCallback;->drawable:Landroid/graphics/drawable/Drawable;

    .line 7
    .line 8
    iput-object p3, p0, Landroid/widget/ImageView$ImageDrawableCallback;->uri:Landroid/net/Uri;

    .line 9
    .line 10
    iput p4, p0, Landroid/widget/ImageView$ImageDrawableCallback;->resource:I

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/widget/ImageView$ImageDrawableCallback;->this$0:Landroid/widget/ImageView;

    .line 2
    .line 3
    iget-object v1, p0, Landroid/widget/ImageView$ImageDrawableCallback;->drawable:Landroid/graphics/drawable/Drawable;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Landroid/widget/ImageView$ImageDrawableCallback;->this$0:Landroid/widget/ImageView;

    .line 9
    .line 10
    iget-object v1, p0, Landroid/widget/ImageView$ImageDrawableCallback;->uri:Landroid/net/Uri;

    .line 11
    .line 12
    invoke-static {v0, v1}, Landroid/widget/ImageView;->access$002(Landroid/widget/ImageView;Landroid/net/Uri;)Landroid/net/Uri;

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Landroid/widget/ImageView$ImageDrawableCallback;->this$0:Landroid/widget/ImageView;

    .line 16
    .line 17
    iget v1, p0, Landroid/widget/ImageView$ImageDrawableCallback;->resource:I

    .line 18
    .line 19
    invoke-static {v0, v1}, Landroid/widget/ImageView;->access$102(Landroid/widget/ImageView;I)I

    .line 20
    .line 21
    .line 22
    return-void
.end method
