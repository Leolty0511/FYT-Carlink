.class public final Landroid/provider/ContactsContract$MetadataSync;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Landroid/provider/ContactsContract$MetadataSyncColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/ContactsContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MetadataSync"
.end annotation


# static fields
.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/contact_metadata"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/contact_metadata"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final METADATA_AUTHORITY:Ljava/lang/String; = "com.android.contacts.metadata"

.field public static final METADATA_AUTHORITY_URI:Landroid/net/Uri;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "content://com.android.contacts.metadata"

    .line 2
    .line 3
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Landroid/provider/ContactsContract$MetadataSync;->METADATA_AUTHORITY_URI:Landroid/net/Uri;

    .line 8
    .line 9
    const-string/jumbo v1, "metadata_sync"

    .line 10
    .line 11
    .line 12
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    sput-object v0, Landroid/provider/ContactsContract$MetadataSync;->CONTENT_URI:Landroid/net/Uri;

    .line 17
    .line 18
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
