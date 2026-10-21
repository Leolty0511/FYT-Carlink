.class public final Lcom/android/internal/app/ResolverActivity$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ResolverActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field public a:Landroid/content/pm/ResolveInfo;

.field public b:Ljava/lang/CharSequence;

.field public c:Landroid/graphics/drawable/Drawable;

.field public d:Ljava/lang/CharSequence;

.field public e:Landroid/content/Intent;

.field public final synthetic f:Lcom/android/internal/app/ResolverActivity;


# direct methods
.method public constructor <init>(Lcom/android/internal/app/ResolverActivity;Landroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity$b;->f:Lcom/android/internal/app/ResolverActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/android/internal/app/ResolverActivity$b;->a:Landroid/content/pm/ResolveInfo;

    .line 3
    iput-object p3, p0, Lcom/android/internal/app/ResolverActivity$b;->b:Ljava/lang/CharSequence;

    .line 4
    iput-object p4, p0, Lcom/android/internal/app/ResolverActivity$b;->d:Ljava/lang/CharSequence;

    .line 5
    iput-object p5, p0, Lcom/android/internal/app/ResolverActivity$b;->e:Landroid/content/Intent;

    return-void
.end method
