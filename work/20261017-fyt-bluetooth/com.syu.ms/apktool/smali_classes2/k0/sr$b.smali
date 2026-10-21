.class public Lk0/sr$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/sr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/sr;


# direct methods
.method public constructor <init>(Lk0/sr;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/sr$b;->a:Lk0/sr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/sr$b;->a:Lk0/sr;

    invoke-static {v0}, Lk0/sr;->f3(Lk0/sr;)V

    .line 2
    iget-object v0, p0, Lk0/sr$b;->a:Lk0/sr;

    const/4 v1, 0x4

    iput v1, v0, Lk0/sr;->b:I

    return-void
.end method
