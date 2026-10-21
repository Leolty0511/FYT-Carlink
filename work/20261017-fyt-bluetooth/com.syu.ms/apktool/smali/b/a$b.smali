.class public Lb/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lb/a;


# direct methods
.method public constructor <init>(Lb/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/a$b;->a:Lb/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    sget v0, Lu0/b;->o:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lb/a$b;->a:Lb/a;

    iget-boolean v3, v0, Lb/a;->a:Z

    invoke-virtual {v0, v3}, Lb/a;->c(Z)I

    move-result v0

    :goto_0
    const/16 v3, 0x81

    new-array v2, v2, [I

    aput v0, v2, v1

    .line 2
    invoke-static {v3, v2}, Lu0/d;->I3(I[I)V

    return-void
.end method
