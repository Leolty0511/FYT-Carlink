.class public Lk0/gl$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/gl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/gl;


# direct methods
.method public constructor <init>(Lk0/gl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/gl$a;->a:Lk0/gl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    sget v0, Lu0/b;->o:I

    const/16 v1, 0x3f1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    .line 2
    iget-object v0, p0, Lk0/gl$a;->a:Lk0/gl;

    iget v4, v0, Lk0/gl;->f:I

    if-eqz v4, :cond_1

    new-array v3, v3, [I

    const/4 v4, 0x2

    aput v4, v3, v2

    .line 3
    invoke-virtual {v0, v1, v3}, Lk0/lt;->Y2(I[I)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lk0/gl$a;->a:Lk0/gl;

    new-array v3, v3, [I

    aput v2, v3, v2

    invoke-virtual {v0, v1, v3}, Lk0/lt;->Y2(I[I)V

    :cond_1
    :goto_0
    return-void
.end method
