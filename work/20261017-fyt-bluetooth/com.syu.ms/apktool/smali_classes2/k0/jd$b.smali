.class public Lk0/jd$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/jd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/jd;


# direct methods
.method public constructor <init>(Lk0/jd;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/jd$b;->a:Lk0/jd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/jd$b;->a:Lk0/jd;

    const/4 v1, 0x0

    iput v1, v0, Lk0/jd;->h:I

    .line 2
    iput v1, v0, Lk0/jd;->i:I

    .line 3
    iget-object v0, v0, Lk0/jd;->m:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 4
    iget-object v0, p0, Lk0/jd$b;->a:Lk0/jd;

    const/4 v1, 0x5

    iput v1, v0, Lk0/jd;->k:I

    return-void
.end method
