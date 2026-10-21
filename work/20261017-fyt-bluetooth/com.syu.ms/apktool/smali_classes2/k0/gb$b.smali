.class public Lk0/gb$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/gb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/gb;


# direct methods
.method public constructor <init>(Lk0/gb;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/gb$b;->a:Lk0/gb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lk0/gb$b;->a:Lk0/gb;

    invoke-static {v0}, Lk0/gb;->f3(Lk0/gb;)V

    return-void
.end method
