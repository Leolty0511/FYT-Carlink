.class public Lcom/android/internal/app/ResolverActivity$d;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ResolverActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Lcom/android/internal/app/ResolverActivity$b;",
        "Ljava/lang/Void;",
        "Lcom/android/internal/app/ResolverActivity$b;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/android/internal/app/ResolverActivity;


# direct methods
.method public constructor <init>(Lcom/android/internal/app/ResolverActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity$d;->a:Lcom/android/internal/app/ResolverActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs a([Lcom/android/internal/app/ResolverActivity$b;)Lcom/android/internal/app/ResolverActivity$b;
    .locals 2

    const/4 v0, 0x0

    .line 1
    aget-object p1, p1, v0

    .line 2
    iget-object v0, p1, Lcom/android/internal/app/ResolverActivity$b;->c:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$d;->a:Lcom/android/internal/app/ResolverActivity;

    iget-object v1, p1, Lcom/android/internal/app/ResolverActivity$b;->a:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ResolverActivity;->i(Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p1, Lcom/android/internal/app/ResolverActivity$b;->c:Landroid/graphics/drawable/Drawable;

    :cond_0
    return-object p1
.end method

.method public b(Lcom/android/internal/app/ResolverActivity$b;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/internal/app/ResolverActivity$d;->a:Lcom/android/internal/app/ResolverActivity;

    invoke-static {p1}, Lcom/android/internal/app/ResolverActivity;->b(Lcom/android/internal/app/ResolverActivity;)Lcom/android/internal/app/ResolverActivity$e;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Lcom/android/internal/app/ResolverActivity$b;

    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverActivity$d;->a([Lcom/android/internal/app/ResolverActivity$b;)Lcom/android/internal/app/ResolverActivity$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/android/internal/app/ResolverActivity$b;

    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverActivity$d;->b(Lcom/android/internal/app/ResolverActivity$b;)V

    return-void
.end method
