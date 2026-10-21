.class public Lu0/i$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu0/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lu0/i;


# direct methods
.method public constructor <init>(Lu0/i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lu0/i$g;->a:Lu0/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 1
    iget-object v1, p0, Lu0/i$g;->a:Lu0/i;

    iget v1, v1, Lu0/i;->u:I

    const/4 v2, 0x0

    aput v1, v0, v2

    const/16 v1, 0x86

    invoke-static {v1, v0}, Lu0/d;->I3(I[I)V

    .line 2
    iget-object v0, p0, Lu0/i$g;->a:Lu0/i;

    iget-object v0, v0, Lu0/i;->e0:Lo1/y;

    invoke-virtual {v0}, Lo1/y;->c()V

    return-void
.end method
