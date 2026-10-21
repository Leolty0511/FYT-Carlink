.class public Lk0/nj$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/nj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/nj;


# direct methods
.method public constructor <init>(Lk0/nj;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/nj$d;->a:Lk0/nj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/nj$d;->a:Lk0/nj;

    sget-object v1, Lh0/c;->h:Ljava/lang/String;

    invoke-static {v0, v1}, Lk0/nj;->o3(Lk0/nj;Ljava/lang/String;)V

    return-void
.end method
