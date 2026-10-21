.class public Lk0/rn$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/rn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/rn;


# direct methods
.method public constructor <init>(Lk0/rn;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/rn$f;->a:Lk0/rn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lk0/rn$f;->a:Lk0/rn;

    iget v1, v0, Lk0/rn;->e:I

    const/4 v2, 0x1

    if-lez v1, :cond_0

    sub-int/2addr v1, v2

    .line 2
    iput v1, v0, Lk0/rn;->e:I

    .line 3
    :cond_0
    iget v0, v0, Lk0/rn;->e:I

    if-nez v0, :cond_1

    const/16 v0, 0x94

    new-array v1, v2, [I

    const/4 v2, 0x0

    aput v2, v1, v2

    .line 4
    invoke-static {v0, v1}, Lk0/qt;->y0(I[I)V

    .line 5
    :cond_1
    invoke-static {}, Ll0/c0;->m()V

    return-void
.end method
