.class public final synthetic Landroid/app/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroid/app/ActivityTransitionCoordinator;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Landroid/app/ActivityTransitionCoordinator;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/d;->b:Landroid/app/ActivityTransitionCoordinator;

    iput p2, p0, Landroid/app/d;->c:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroid/app/d;->b:Landroid/app/ActivityTransitionCoordinator;

    iget v1, p0, Landroid/app/d;->c:I

    invoke-static {v0, v1}, Landroid/app/ActivityTransitionCoordinator;->a(Landroid/app/ActivityTransitionCoordinator;I)V

    return-void
.end method
