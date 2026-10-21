.class Landroid/graphics/drawable/RippleForeground$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/RippleForeground;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/graphics/drawable/RippleForeground;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/RippleForeground;)V
    .locals 0

    iput-object p1, p0, Landroid/graphics/drawable/RippleForeground$1;->this$0:Landroid/graphics/drawable/RippleForeground;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Landroid/graphics/drawable/RippleForeground$1;->this$0:Landroid/graphics/drawable/RippleForeground;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Landroid/graphics/drawable/RippleForeground;->access$002(Landroid/graphics/drawable/RippleForeground;Z)Z

    return-void
.end method
