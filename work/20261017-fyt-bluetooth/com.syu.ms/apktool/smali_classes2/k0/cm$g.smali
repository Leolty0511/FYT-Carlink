.class public Lk0/cm$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/cm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/cm;


# direct methods
.method public constructor <init>(Lk0/cm;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/cm$g;->a:Lk0/cm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/cm$g;->a:Lk0/cm;

    iget-object v0, v0, Lk0/cm;->C:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lk0/cm$g;->a:Lk0/cm;

    const/4 v1, 0x5

    iput v1, v0, Lk0/cm;->A:I

    return-void
.end method
