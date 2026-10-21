.class public Lk0/rn$g;
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
    iput-object p1, p0, Lk0/rn$g;->a:Lk0/rn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/rn$g;->a:Lk0/rn;

    iget-object v0, v0, Lk0/rn;->D:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lk0/rn$g;->a:Lk0/rn;

    const/4 v1, 0x5

    iput v1, v0, Lk0/rn;->B:I

    return-void
.end method
